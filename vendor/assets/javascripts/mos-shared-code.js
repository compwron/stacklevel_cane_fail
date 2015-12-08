var animationEffects, clearItem, defaultNamespace, defaultOptions, getItem, notices, setItem, shouldUseLocalStorage, show, stacks, useLocalStorageForNextRequest;

defaultNamespace = 'default';

notices = {};

defaultOptions = {
  type: 'error',
  className: 'error',
  allowClose: true
};

this.FlashNotice = {
  remove: function(namespace) {
    if (namespace == null) {
      namespace = defaultNamespace;
    }
    if (!notices.hasOwnProperty(namespace)) {
      return;
    }
    return notices[namespace].remove();
  },
  set: function(message, namespace, options) {
    if (namespace == null) {
      namespace = defaultNamespace;
    }
    if (options == null) {
      options = {};
    }
    if (!notices.hasOwnProperty(namespace)) {
      notices[namespace] = new App.Views.Common.FlashNotice(_.extend(defaultOptions, options));
      Backbone.Events.listenTo(notices[namespace], 'remove', (function(_this) {
        return function() {
          return delete notices[namespace];
        };
      })(this));
    }
    return notices[namespace].message = message;
  },
  show: function(namespace, message, options) {
    if (namespace == null) {
      namespace = defaultNamespace;
    }
    if (message == null) {
      message = '';
    }
    if (options == null) {
      options = {};
    }
    if (message) {
      this.set(message, namespace, options);
    }
    if (notices.hasOwnProperty(namespace)) {
      return notices[namespace].render();
    }
  }
};

stacks = {
  topRight: {
    dir1: 'down',
    dir2: 'left',
    firstpos1: 25,
    firstpos2: 25
  },
  bottomRight: {
    dir1: 'up',
    dir2: 'left',
    firstpos1: 25,
    firstpos2: 25
  }
};

animationEffects = null;

show = function(options) {
  if (options == null) {
    options = {};
  }
  options = _.extend({
    title: 'Notification',
    text: null,
    icon: null,
    type: 'info',
    hide: false,
    styling: 'fontawesome',
    insert_brs: false,
    buttons: {
      sticker: false
    }
  }, options);
  if (!options.text) {
    throw new Error('No message set.');
  }
  return new PNotify(options);
};

this.GrowlNotice = {

  /**
   * Add optional animation to a growl notice.
   *
   *    ie. App.Util.GrowlNotice.animate(...).show(...)
   *
   */
  animate: function(options) {
    if (options == null) {
      options = {
        inEffect: 'slide',
        inEffectEasing: 'easeOutElastic',
        outEffect: 'slide',
        outEffectEasing: 'linear',
        speed: 250
      };
    }
    animationEffects = {
      animate_speed: options.speed,
      animation: {
        effect_in: options.inEffect,
        options_in: options.inEffectEasing,
        effect_out: options.outEffect,
        options_out: options.outEffectEasing
      }
    };
    return this;
  },
  topRight: {
    show: (function(_this) {
      return function(options) {
        var notice;
        options.stack = stacks.topRight;
        options.addclass = 'stack-topright' + (options.addclass ? " " + options.addclass : '');
        if (animationEffects) {
          options = _.extend(options, animationEffects);
        }
        notice = show(options);
        animationEffects = null;
        return notice;
      };
    })(this)
  },
  bottomRight: {
    show: (function(_this) {
      return function(options) {
        var notice;
        options.stack = stacks.bottomRight;
        options.addclass = 'stack-bottomright' + (options.addclass ? " " + options.addclass : '');
        if (animationEffects) {
          options = _.extend(options, animationEffects);
        }
        notice = show(options);
        animationEffects = null;
        return notice;
      };
    })(this)
  },
  show: function(options) {
    return this.bottomRight.show(options);
  }
};


/**
 * Shared helper methods
 */

useLocalStorageForNextRequest = true;

shouldUseLocalStorage = function() {
  return Modernizr.localstorage && useLocalStorageForNextRequest;
};

setItem = function(name, value, expireDays) {
  var d, expires;
  if (expireDays == null) {
    expireDays = '99999';
  }
  if (shouldUseLocalStorage()) {
    return localStorage.setItem(name, value);
  }
  useLocalStorageForNextRequest = true;
  d = new Date();
  d.setTime(d.getTime() + (expireDays * 24 * 60 * 60 * 1000));
  expires = "expires=" + (d.toGMTString());
  return document.cookie = name + "=" + value + "; " + expires;
};

getItem = function(name) {
  var attr, cookieAttribute, i, len;
  if (shouldUseLocalStorage()) {
    return localStorage.getItem(name);
  }
  useLocalStorageForNextRequest = true;
  name = name + "=";
  cookieAttribute = document.cookie.split(';');
  for (i = 0, len = cookieAttribute.length; i < len; i++) {
    attr = cookieAttribute[i];
    attr = $.trim(attr);
    if (attr.indexOf(name) === 0) {
      return attr.substring(name.length, attr.length);
    }
  }
  return null;
};

clearItem = function(name) {
  if (shouldUseLocalStorage()) {
    return localStorage.clear();
  }
  useLocalStorageForNextRequest = true;
  return setItem(name, '', -1);
};

this.LocalStorage = {

  /**
   * Directly accessible and will determine whether to use localStorage
   * or cookie if browser supported. Tends to use localStorage when available.
   *
   *    ie. App.localStorage.set(...)
   *                        .get(...)
   *
   */
  set: setItem,
  get: getItem,
  clear: clearItem,

  /**
   * Chainable to force access cookie for singular requests
   *
   *    ie. App.localStorage.cookie.set(...) => sets cookie
   *                               .get(...) => gets cookie
   *
   */
  cookie: {
    set: function(name, value, expireDays) {
      useLocalStorageForNextRequest = false;
      return setItem(name, value, expireDays);
    },
    get: function(name) {
      useLocalStorageForNextRequest = false;
      return getItem(name);
    },
    clear: function(name) {
      useLocalStorageForNextRequest = false;
      return clearItem(name);
    }
  }
};

this.notifications = {
  list: {},
  loadNextNotice: function() {
    var notification;
    if (this._displayList.length < 1) {
      return;
    }
    notification = this._displayList.shift();
    if (notification.expiresAt.isBefore(moment())) {
      return this.loadNextNotice();
    }
    if (LocalStorage.get("sn-" + notification.id)) {
      return this.loadNextNotice();
    }
    return setTimeout((function(_this) {
      return function() {
        var notice;
        notice = GrowlNotice.animate().bottomRight.show(_.extend(notification, {
          slugId: notification.id,
          text: notification.template(),
          addclass: notification.id + (notification.addclass ? " " + notification.addclass : ''),
          before_close: function(PNotify, timer_hide) {
            if (!timer_hide) {
              return LocalStorage.set("sn-" + notification.id, true);
            }
          }
        }));
        if (notification.titleLink) {
          $(".ui-pnotify." + notification.id + " .ui-pnotify-title").css('cursor', 'pointer').on('click', function() {
            if (notification.titleLink.indexOf("http") === 0) {
              window.open(notification.titleLink, '_blank');
            } else {
              Groupon.BC.navigate(notification.titleLink, {
                trigger: true
              });
            }
            return notice.remove();
          });
        }
        return _this.loadNextNotice();
      };
    })(this), notification.delayOpen);
  },
  show: function() {
    this._displayList = _.sortBy(this.list, 'createdAt');
    return this.loadNextNotice();
  },
  add: function(slugId, options) {
    if (options == null) {
      options = {
        expiresAt: null,
        delayOpen: 1
      };
    }
    if (this.list.hasOwnProperty(slugId)) {
      throw new Error('Slug ID already in use.');
    }
    if (!options.title) {
      throw new Error("Need title for `" + slugId + "`.");
    }
    if (!options.template) {
      throw new Error("Need template for `" + slugId + "`.");
    }
    options.id = slugId;
    options.template = Groupon.BC.templateFor("notifications/startup/" + options.template);
    options.createdAt = moment(options.createdAt);
    if (options.expiresAt) {
      options.expiresAt = moment(options.expiresAt);
    }
    if (options.expiresInDays) {
      options.expiresAt = moment(options.createdAt).add(options.expiresInDays, 'days');
    }
    if (!options.createdAt.isValid()) {
      throw new Error("Invalid creation date for `" + slugId + "`.");
    }
    if (!options.expiresAt.isValid()) {
      throw new Error("Invalid expiry for `" + slugId + "`.");
    }
    if (options.delayOpenSeconds) {
      if (_.isNaN(parseInt(options.delayOpenSeconds, 10))) {
        throw new Error("Delay must be numeric for `" + slugId + ".");
      }
      options.delayOpen = options.delayOpenSeconds * 1000;
    }
    return this.list[slugId] = options;
  }
};

$(function() {
  var App, checkDevice, checkEnvironment;
  App = typeof Groupon !== "undefined" && Groupon !== null ? Groupon.BC : void 0;
  checkEnvironment = function() {
    return App.config && App.config.environment !== 'test';
  };
  checkDevice = function() {
    return App && !App.isWebView() && !App.isMobile();
  };
  if (!(checkDevice() && checkEnvironment())) {
    return;
  }
  window.zEmbed||function(e,t){var n,o,d,i,s,a=[],r=document.createElement("iframe");window.zEmbed=function(){a.push(arguments)},window.zE=window.zE||window.zEmbed,r.src="javascript:false",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="display: none",d=document.getElementsByTagName("script"),d=d[d.length-1],d.parentNode.insertBefore(r,d),i=r.contentWindow,s=i.document;try{o=s}catch(c){n=document.domain,r.src='javascript:var d=document.open();d.domain="'+n+'";void(0);',o=s}o.open()._l=function(){var o=this.createElement("script");n&&(this.domain=n),o.id="js-iframe-async",o.src=e,this.t=+new Date,this.zendeskHost=t,this.zEQueue=a,this.body.appendChild(o)},o.write('<body onload="document._l();">'),o.close()}("https://assets.zendesk.com/embeddable_framework/main.js","breadcrumb.zendesk.com");;
  return zE(function() {
    var currentPage, user, widget;
    if (!(App && App.restaurant && App.currentUser)) {
      return;
    }
    widget = {
      name: 'ZendeskLauncher',
      selector: function() {
        return "button#" + this.name;
      },
      element: function() {
        return $(this.selector());
      },
      positionFromBottom: 30,
      lagDistanceFromCenter: 25
    };
    currentPage = {
      isScrolling: false,
      lastScrollPosition: 0,
      stoppedScrolling: _.debounce(function() {
        currentPage.isScrolling = false;
        return widget.element().css('bottom', widget.positionFromBottom + "px");
      }, 150)
    };
    $('body').append("<button id=\"" + widget.name + "\"><i class=\"fa fa-question-circle\"></i><span>Help</span></button>");
    user = {
      name: (App.currentUser.get('first_name')) + " " + (App.currentUser.get('last_name')),
      email: App.currentUser.get('username'),
      externalId: App.currentUser.get('id')
    };
    if (!App.currentUser.get('is_superuser')) {
      zE.identify(user);
    }
    $(document).on('click', widget.selector(), function() {
      return zE.activate({
        hideOnClose: true
      });
    });
    return $(window).on('scroll', function() {
      var position, scrollPosition;
      scrollPosition = $(this).scrollTop();
      if (!currentPage.isScrolling) {
        if (scrollPosition > currentPage.lastScrollPosition) {
          position = widget.positionFromBottom + widget.lagDistanceFromCenter;
        } else {
          position = widget.positionFromBottom - widget.lagDistanceFromCenter;
        }
        widget.element().css('bottom', position + "px");
        currentPage.isScrolling = true;
      }
      currentPage.lastScrollPosition = scrollPosition;
      return currentPage.stoppedScrolling();
    });
  });
});
