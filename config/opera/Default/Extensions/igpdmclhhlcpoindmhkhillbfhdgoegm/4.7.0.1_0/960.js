!function(){try{var o="undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{},e=(new Error).stack;e&&(o._sentryDebugIds=o._sentryDebugIds||{},o._sentryDebugIds[e]="d38e293e-b5a7-4516-84d4-a91f6d08e14d",o._sentryDebugIdIdentifier="sentry-dbid-d38e293e-b5a7-4516-84d4-a91f6d08e14d")}catch(o){}}();var _global="undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{};_global.SENTRY_RELEASE={id:"02100fd5d564d00d79059ff830121579f0a6f59a"},(self.webpackChunkaria_extension=self.webpackChunkaria_extension||[]).push([[960],{59291:(o,e,a)=>{a.d(e,{Z:()=>y});var t=a(8081),r=a.n(t),n=a(23645),b=a.n(n),p=a(61667),c=a.n(p),h=new URL(a(47918),a.b),g=new URL(a(86379),a.b),d=new URL(a(47643),a.b),i=new URL(a(75650),a.b),s=new URL(a(94961),a.b),l=new URL(a(35194),a.b),f=b()(r()),u=c()(h),m=c()(g),x=c()(d),k=c()(i),w=c()(s),v=c()(l);f.push([o.id,`:root {\n  --opera-chatbot-button-animation: 0.2s ease-in-out;\n  --opera-button-border-radius: 8px;\n  --opera-chatbot-button-border-radius: 8px;\n  --opera-menu-option-border-radius: 5px;\n  --opera-chatbot-new-chat-arrow: #fff;\n  --opera-chatbot-message-highlight-bg-padding-y: 3.5px;\n}\n\n@media (prefers-color-scheme: dark) {\n  :root {\n    --opera-chatbot-background: #030615;\n    --opera-chatbot-input-placeholder: rgba(255, 255, 255, 0.5);\n    --opera-chatbot-input: #fff;\n    --opera-chatbot-message-title: #fff;\n\n    --opera-chatbot-message-highlight-menu-sep: #484d64;\n    --opera-chatbot-message-highlight-border: var(--opera-chatbot-message-highlight-menu-sep);\n    --opera-chatbot-message-highlight-active-border: #5021ff;\n    --opera-chatbot-message-highlight-bg-custom-1: #ffc01f;\n    --opera-chatbot-message-highlight-bg-custom-2: #00aba0;\n    --opera-chatbot-message-highlight-bg-custom-3: #ff2f7b;\n    --opera-chatbot-message-highlight-bg-default: rgba(37, 40, 53, 1);\n    --opera-chatbot-message-highlight-bg: #542870;\n    --opera-chatbot-message-highlight-chip-color: #484d64;\n    --opera-chatbot-message-highlight-color: #fff;\n    --opera-chatbot-message-highlight-menu-border: 1px solid #484d64;\n    --opera-chatbot-message-highlight-menu-box-shadow: 0px 0px 8px 0px #616889cc;\n    --opera-chatbot-message-highlight-rephrase-init-background-color-start: var(\n      --opera-chatbot-message-highlight-bg\n    );\n    --opera-chatbot-message-highlight-rephrase-init-background-color-end: transparent;\n    --opera-chatbot-message-highlight-rephrase-done-background-color-start: var(\n      --opera-chatbot-message-highlight-bg\n    );\n    --opera-chatbot-message-highlight-rephrase-done-background-color-end: transparent;\n    --opera-chatbot-to-content: #fff;\n    --opera-chatbot-from-content: #fff;\n    --opera-chatbot-from: none;\n    --opera-chatbot-to: #252836;\n    --opera-chatbot-form-input-bg: #252836;\n    --opera-chatbot-burger-bg: #484d65;\n    --opera-menu-background: #252836;\n    --opera-menu-wrapper-box-shadow: 25px 0px 47px 5px rgba(0, 0, 0, 0.54);\n    --opera-menu-background-hover: #2e3241;\n    --opera-menu-input: #dae2ea;\n    --opera-menu-option: #484d65;\n    --opera-menu-option-buttons-bg: transparent;\n    --opera-menu-checked-box: #58c095;\n    --opera-menu-edit-input-color: #fff;\n    --opera-chatbot-message-info-border: #484d65;\n    --opera-chatbot-message-active-border: rgba(80, 33, 255, 0.64);\n    --opera-menu-edit-input-bg: #484d65;\n    --opera-confirmation-popup-background: rgba(0, 0, 0, 0.67);\n    --opera-confirmation-popup-box-shadow: 0px 0px 40px rgba(3, 6, 21, 0.53);\n    --opera-confirmation-popup-text: #fff;\n    --opera-icon-color: #fff;\n    --opera-menu-footer-text: rgba(255, 255, 255, 0.8);\n    --opera-menu-footer-bg: transparent;\n\n    --opera-chatbot-button-primary-active: #5021ff;\n    --opera-chatbot-button-primary-hovered: #401acc;\n    --opera-chatbot-button-primary-disabled: #484d65;\n    --opera-chatbot-button-primary-color: #fff;\n    --opera-chatbot-button-primary-color-disabled: rgba(255, 255, 255, 0.5);\n\n    --opera-chatbot-button-secondary-active-border: #484d65;\n    --opera-chatbot-button-secondary-active-bg: transparent;\n    --opera-chatbot-button-secondary-hovered: #2e3241;\n    --opera-chatbot-button-secondary-color: #fff;\n\n    --opera-chatbot-scrollbar-thumb: #484d65;\n    --opera-chatbot-scrollbar-track: #030615;\n    --opera-input-scrollbar-track: #030615;\n    --opera-menu-scrollbar-track: #252836;\n\n    --opera-chatbot-link-bg: #484d65;\n    --opera-chatbot-blockquote-link-bg: rgba(255, 255, 255, 0.2);\n    --opera-chatbot-table-link-bg: rgba(255, 255, 255, 0.2);\n    --opera-chatbot-link-hover-bg: #1f212e;\n    --opera-chatbot-table-bg: #484d65;\n\n    --menu-chat-opacity: 50%;\n\n    --opera-chatbot-codebox-header-bg: #484d65;\n    --opera-chatbot-codebox-header-text: white;\n    --opera-chatbot-codebox-bg: #1d1f21;\n    --opera-icon-copy: url(${u});\n    --opera-icon-done: url(${m});\n    --opera-remove-icon: url(${x});\n\n    --opera-chatbot-scroll-down-border-color: rgb(80, 33, 255);\n    --opera-chatbot-scroll-down-border-width: 6px;\n\n    --opera-chatbot-blockquote-bg: #484d65;\n\n    --logo-opera-one-url: url(${k});\n\n    --chat-header-bg-color: #2e3241;\n\n    --tooltip-bg-color: #252835;\n    --tooltip-border-color: #484d64;\n    --tooltip-box-shadow: 0px 0px 8px 0px rgba(97, 104, 137, 0.8);\n    --tooltip-color: #ffffff;\n    --opera-chatbot-scroll-down-bg-color: #484d65;\n    --opera-chatbot-scroll-down-bg-color-hovered: #1f212e;\n    --compose-range: #000000ab;\n  }\n}\n\n@media (prefers-color-scheme: light) {\n  :root {\n    --opera-chatbot-background: #fff;\n    --opera-chatbot-input-placeholder: #94999e;\n    --opera-chatbot-input: #2a343d;\n    --opera-chatbot-message-title: #2a343d;\n    --opera-chatbot-message-highlight-menu-sep: #e7edf1;\n    --opera-chatbot-message-highlight-border: var(--opera-chatbot-message-highlight-menu-sep);\n    --opera-chatbot-message-highlight-active-border: #5021ff;\n    --opera-chatbot-message-highlight-bg-custom-1: #ffc01f;\n    --opera-chatbot-message-highlight-bg-custom-2: #02ffc2;\n    --opera-chatbot-message-highlight-bg-custom-3: #ff7ead;\n    --opera-chatbot-message-highlight-bg-default: rgba(255, 255, 255);\n    --opera-chatbot-message-highlight-bg: #c7ddff;\n    --opera-chatbot-message-highlight-chip-color: rgba(187, 203, 215, 0.6);\n    --opera-chatbot-message-highlight-color: #2a343d;\n    --opera-chatbot-message-highlight-menu-border: 1px solid #d0dbe3;\n    --opera-chatbot-message-highlight-menu-box-shadow: 0px 2px 16px 0px #00000029;\n    --opera-chatbot-message-highlight-rephrase-init-background-color-start: var(\n      --opera-chatbot-message-highlight-bg\n    );\n    --opera-chatbot-message-highlight-rephrase-init-background-color-end: transparent;\n    --opera-chatbot-message-highlight-rephrase-done-background-color-start: var(\n      --opera-chatbot-message-highlight-bg\n    );\n    --opera-chatbot-message-highlight-rephrase-done-background-color-end: transparent;\n    --opera-chatbot-to-content: #2a343d;\n    --opera-chatbot-from-content: #2a343d;\n    --opera-chatbot-from: none;\n    --opera-chatbot-to: #e7edf1;\n    --opera-chatbot-form-input-bg: #e7edf1;\n    --opera-chatbot-burger-bg: #e7edf1;\n    --opera-menu-background: #fff;\n    --opera-menu-wrapper-box-shadow: 0px 4px 24px rgba(0, 0, 0, 0.16);\n    --opera-menu-background-hover: #f2f4f6;\n    --opera-menu-input: #2a343d;\n    --opera-menu-option: #e7edf1;\n    --opera-menu-option-buttons-bg: transparent;\n    --opera-menu-checked-box: #ef8d4b;\n    --opera-menu-edit-input-color: #2a343d;\n    --opera-chatbot-message-info-border: #d0dbe3;\n    --opera-chatbot-message-active-border: rgba(80, 33, 255, 0.36);\n    --opera-menu-edit-input-bg: #e7edf1;\n    --opera-confirmation-popup-background: rgba(187, 203, 215, 0.6);\n    --opera-confirmation-popup-box-shadow: 0px 4px 24px rgba(0, 0, 0, 0.16);\n    --opera-confirmation-popup-text: #2a343d;\n    --opera-icon-color: #2a343d;\n    --opera-menu-footer-text: #94999e;\n    --opera-menu-footer-bg: transparent;\n\n    --opera-chatbot-button-primary-active: #5021ff;\n    --opera-chatbot-button-primary-hovered: #401acc;\n    --opera-chatbot-button-primary-disabled: #d0dbe3;\n    --opera-chatbot-button-primary-color: #fff;\n    --opera-chatbot-button-primary-color-disabled: #94999e;\n\n    --opera-chatbot-button-secondary-active-border: #d0dbe3;\n    --opera-chatbot-button-secondary-active-bg: transparent;\n    --opera-chatbot-button-secondary-hovered: rgba(187, 203, 215, 0.6);\n    --opera-chatbot-button-secondary-color: #2a343d;\n\n    --opera-chatbot-scrollbar-thumb: #d0dbe3;\n    --opera-chatbot-scrollbar-track: #fff;\n    --opera-input-scrollbar-track: #fff;\n    --opera-menu-scrollbar-track: #fff;\n\n    --opera-chatbot-link-bg: #d0dbe3;\n    --opera-chatbot-blockquote-link-bg: #e7edf1;\n    --opera-chatbot-table-link-bg: #e7edf1;\n    --opera-chatbot-link-hover-bg: rgba(187, 203, 215, 1);\n    --opera-chatbot-table-bg: rgba(255, 255, 255, 0.5);\n\n    --opera-chatbot-codebox-header-bg: #d0dbe3;\n    --opera-chatbot-codebox-header-text: #2a343d;\n    --opera-chatbot-codebox-bg: #fff;\n    --opera-icon-copy: url(${u});\n    --opera-icon-done: url(${m});\n    --opera-remove-icon: url(${w});\n\n    --menu-chat-opacity: 100%;\n    --opera-chatbot-scroll-down-border-color: rgb(80, 33, 255);\n    --opera-chatbot-scroll-down-border-width: 4px;\n\n    --opera-chatbot-blockquote-bg: rgba(255, 255, 255, 0.5);\n\n    --logo-opera-one-url: url(${v});\n\n    --chat-header-bg-color: #f2f4f6;\n\n    --tooltip-bg-color: #ffffff;\n    --tooltip-border-color: #d0dbe3;\n    --tooltip-box-shadow: 0px 4px 24px 0px rgba(0, 0, 0, 0.16);\n    --tooltip-color: #2a343d;\n    --opera-chatbot-scroll-down-bg-color: #e7edf1;\n    --opera-chatbot-scroll-down-bg-color-hovered: rgba(187, 203, 215, 1);\n    --compose-range: #bbcbd799;\n  }\n}\n`,""]);const y=f},34960:(o,e,a)=>{a.r(e),a.d(e,{default:()=>m});var t=a(93379),r=a.n(t),n=a(7795),b=a.n(n),p=a(90569),c=a.n(p),h=a(68575),g=a.n(h),d=a(19216),i=a.n(d),s=a(44589),l=a.n(s),f=a(59291),u={attributes:{source:"aria-extension"}};u.styleTagTransform=l(),u.setAttributes=g(),u.insert=c().bind(null,"head"),u.domAPI=b(),u.insertStyleElement=i();r()(f.Z,u);const m=f.Z&&f.Z.locals?f.Z.locals:void 0},47643:(o,e,a)=>{o.exports=a.p+"d0877e5dff306fe97ec6.svg"},94961:(o,e,a)=>{o.exports=a.p+"bb5bab09afdd42e97c18.svg"},75650:(o,e,a)=>{o.exports=a.p+"6912698b643838d06158.svg"},35194:(o,e,a)=>{o.exports=a.p+"6912698b643838d06158.svg"}}]);