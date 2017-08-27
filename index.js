import { NativeModules } from 'react-native';

const { RNReactNativeTwitter } = NativeModules;

module.exports = {
  shareOnTwitter: function(params, callback) {
    if (!(params['link'] || params['text'])) {
      callback("missing_link_or_text");
    } else {
      return RNReactNativeTwitter.tweet(params, callback);
    }
  },
  shareOnFacebook: function(params, callback) {
    if (!(params['link'] || params['text'])) {
      callback("missing_link_or_text");
    } else {
      return RNReactNativeTwitter.shareOnFacebook(params, callback);
    }
  }
};
