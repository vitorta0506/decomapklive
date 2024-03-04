package pb;

import android.view.View;
import android.widget.TextView;
/* loaded from: classes4.dex */
public final /* synthetic */ class a {
    public static TextView a(b bVar, View view) {
        if (view instanceof TextView) {
            if (view.getId() == -1) {
                view.setId(16908299);
            } else if (view.getId() != 16908299) {
                throw new IllegalArgumentException("You must set the ID value of TextView to android.R.id.message");
            }
            return (TextView) view;
        }
        View findViewById = view.findViewById(16908299);
        if (findViewById instanceof TextView) {
            return (TextView) findViewById;
        }
        throw new IllegalArgumentException("You must include a TextView with an ID value of android.R.id.message");
    }
}
