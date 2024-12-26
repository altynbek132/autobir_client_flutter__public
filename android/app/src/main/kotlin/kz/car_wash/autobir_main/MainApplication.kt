package kz.car_wash.autobir_main

import android.app.Application
import com.yandex.mapkit.MapKitFactory

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()

        // yandex_mapkit
        // MapKitFactory.setLocale(
        //         "YOUR_LOCALE"
        // ) // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("ce0c5a27-616a-4f28-af26-2e36a8c4dc3e") // Your generated API key
    }
}
