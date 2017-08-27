using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNReactNativeTwitter
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNReactNativeTwitterModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNReactNativeTwitterModule"/>.
        /// </summary>
        internal RNReactNativeTwitterModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNReactNativeTwitter";
            }
        }
    }
}
