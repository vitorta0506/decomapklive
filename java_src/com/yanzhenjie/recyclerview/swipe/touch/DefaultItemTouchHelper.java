package com.yanzhenjie.recyclerview.swipe.touch;

import androidx.recyclerview.widget.CompatItemTouchHelper;
import cg.a;
import cg.b;
import cg.c;
/* loaded from: classes5.dex */
public class DefaultItemTouchHelper extends CompatItemTouchHelper {

    /* renamed from: a  reason: collision with root package name */
    private DefaultItemTouchHelperCallback f37850a;

    public DefaultItemTouchHelper() {
        this(new DefaultItemTouchHelperCallback());
    }

    public void a(boolean z10) {
        this.f37850a.a(z10);
    }

    public void b(boolean z10) {
        this.f37850a.b(z10);
    }

    public void setOnItemMoveListener(a aVar) {
        this.f37850a.setOnItemMoveListener(aVar);
    }

    public void setOnItemMovementListener(b bVar) {
        this.f37850a.setOnItemMovementListener(bVar);
    }

    public void setOnItemStateChangedListener(c cVar) {
        this.f37850a.setOnItemStateChangedListener(cVar);
    }

    private DefaultItemTouchHelper(DefaultItemTouchHelperCallback defaultItemTouchHelperCallback) {
        super(defaultItemTouchHelperCallback);
        this.f37850a = (DefaultItemTouchHelperCallback) getCallback();
    }
}
