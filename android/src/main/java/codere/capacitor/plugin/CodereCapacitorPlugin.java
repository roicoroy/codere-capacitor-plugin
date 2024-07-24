package codere.capacitor.plugin;

import android.util.Log;

public class CodereCapacitorPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
