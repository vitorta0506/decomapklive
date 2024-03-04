package me.gujun.android.taggroup;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.ArrowKeyMovementMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public class TagGroup extends ViewGroup {
    private int A;
    private int B;
    private int C;
    private int D;
    private float E;
    private float F;
    private int G;
    private int H;
    private int I;
    private int J;
    private d K;
    private e L;
    private b M;

    /* renamed from: a  reason: collision with root package name */
    private final int f55011a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55012b;

    /* renamed from: c  reason: collision with root package name */
    private final int f55013c;

    /* renamed from: d  reason: collision with root package name */
    private final int f55014d;

    /* renamed from: e  reason: collision with root package name */
    private final int f55015e;

    /* renamed from: f  reason: collision with root package name */
    private final int f55016f;

    /* renamed from: g  reason: collision with root package name */
    private final int f55017g;

    /* renamed from: h  reason: collision with root package name */
    private final int f55018h;

    /* renamed from: i  reason: collision with root package name */
    private final int f55019i;

    /* renamed from: j  reason: collision with root package name */
    private final int f55020j;

    /* renamed from: k  reason: collision with root package name */
    private final int f55021k;

    /* renamed from: l  reason: collision with root package name */
    private final float f55022l;

    /* renamed from: m  reason: collision with root package name */
    private final float f55023m;

    /* renamed from: n  reason: collision with root package name */
    private final float f55024n;

    /* renamed from: o  reason: collision with root package name */
    private final float f55025o;

    /* renamed from: p  reason: collision with root package name */
    private final float f55026p;

    /* renamed from: q  reason: collision with root package name */
    private final float f55027q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f55028r;

    /* renamed from: s  reason: collision with root package name */
    private CharSequence f55029s;

    /* renamed from: t  reason: collision with root package name */
    private int f55030t;

    /* renamed from: u  reason: collision with root package name */
    private int f55031u;

    /* renamed from: v  reason: collision with root package name */
    private int f55032v;

    /* renamed from: w  reason: collision with root package name */
    private int f55033w;

    /* renamed from: x  reason: collision with root package name */
    private int f55034x;

    /* renamed from: y  reason: collision with root package name */
    private int f55035y;

    /* renamed from: z  reason: collision with root package name */
    private int f55036z;

    /* loaded from: classes7.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGroup.this.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f fVar = (f) view;
            if (TagGroup.this.f55028r) {
                if (fVar.f55043a == 2) {
                    f checkedTag = TagGroup.this.getCheckedTag();
                    if (checkedTag != null) {
                        checkedTag.f(false);
                    }
                } else if (fVar.f55044b) {
                    TagGroup.this.w(fVar);
                } else {
                    f checkedTag2 = TagGroup.this.getCheckedTag();
                    if (checkedTag2 != null) {
                        checkedTag2.f(false);
                    }
                    fVar.f(true);
                }
            } else if (TagGroup.this.L != null) {
                TagGroup.this.L.a(fVar.getText().toString());
            }
        }
    }

    /* loaded from: classes7.dex */
    public static class c extends ViewGroup.LayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i9, int i10) {
            super(i9, i10);
        }
    }

    /* loaded from: classes7.dex */
    public interface d {
        void a(TagGroup tagGroup, String str);

        void b(TagGroup tagGroup, String str);
    }

    /* loaded from: classes7.dex */
    public interface e {
        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class f extends TextView {

        /* renamed from: a  reason: collision with root package name */
        private int f55043a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f55044b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f55045c;

        /* renamed from: d  reason: collision with root package name */
        private Paint f55046d;

        /* renamed from: e  reason: collision with root package name */
        private Paint f55047e;

        /* renamed from: f  reason: collision with root package name */
        private Paint f55048f;

        /* renamed from: g  reason: collision with root package name */
        private RectF f55049g;

        /* renamed from: h  reason: collision with root package name */
        private RectF f55050h;

        /* renamed from: i  reason: collision with root package name */
        private RectF f55051i;

        /* renamed from: j  reason: collision with root package name */
        private RectF f55052j;

        /* renamed from: k  reason: collision with root package name */
        private RectF f55053k;

        /* renamed from: l  reason: collision with root package name */
        private Rect f55054l;

        /* renamed from: m  reason: collision with root package name */
        private Path f55055m;

        /* renamed from: n  reason: collision with root package name */
        private PathEffect f55056n;

        /* loaded from: classes7.dex */
        class a implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TagGroup f55058a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f55059b;

            a(TagGroup tagGroup, int i9) {
                this.f55058a = tagGroup;
                this.f55059b = i9;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return this.f55059b != 2;
            }
        }

        /* loaded from: classes7.dex */
        class b implements TextView.OnEditorActionListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TagGroup f55061a;

            b(TagGroup tagGroup) {
                this.f55061a = tagGroup;
            }

            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
                if (i9 == 0 && keyEvent != null && keyEvent.getKeyCode() == 66 && keyEvent.getAction() == 0) {
                    if (f.this.e()) {
                        f.this.c();
                        if (TagGroup.this.K != null) {
                            d dVar = TagGroup.this.K;
                            f fVar = f.this;
                            dVar.a(TagGroup.this, fVar.getText().toString());
                        }
                        TagGroup.this.t();
                        return true;
                    }
                    return true;
                }
                return false;
            }
        }

        /* loaded from: classes7.dex */
        class c implements View.OnKeyListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TagGroup f55063a;

            c(TagGroup tagGroup) {
                this.f55063a = tagGroup;
            }

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i9, KeyEvent keyEvent) {
                f lastNormalTagView;
                if (i9 == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(f.this.getText().toString()) && (lastNormalTagView = TagGroup.this.getLastNormalTagView()) != null) {
                    if (lastNormalTagView.f55044b) {
                        TagGroup.this.removeView(lastNormalTagView);
                        if (TagGroup.this.K != null) {
                            TagGroup.this.K.b(TagGroup.this, lastNormalTagView.getText().toString());
                        }
                    } else {
                        f checkedTag = TagGroup.this.getCheckedTag();
                        if (checkedTag != null) {
                            checkedTag.f(false);
                        }
                        lastNormalTagView.f(true);
                    }
                    return true;
                }
                return false;
            }
        }

        /* loaded from: classes7.dex */
        class d implements TextWatcher {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TagGroup f55065a;

            d(TagGroup tagGroup) {
                this.f55065a = tagGroup;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
                f checkedTag = TagGroup.this.getCheckedTag();
                if (checkedTag != null) {
                    checkedTag.f(false);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            }
        }

        /* loaded from: classes7.dex */
        private class e extends InputConnectionWrapper {
            public e(InputConnection inputConnection, boolean z10) {
                super(inputConnection, z10);
            }

            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean deleteSurroundingText(int i9, int i10) {
                if (i9 == 1 && i10 == 0) {
                    return sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67));
                }
                return super.deleteSurroundingText(i9, i10);
            }
        }

        public f(Context context, int i9, CharSequence charSequence) {
            super(context);
            this.f55044b = false;
            this.f55045c = false;
            this.f55046d = new Paint(1);
            this.f55047e = new Paint(1);
            this.f55048f = new Paint(1);
            this.f55049g = new RectF();
            this.f55050h = new RectF();
            this.f55051i = new RectF();
            this.f55052j = new RectF();
            this.f55053k = new RectF();
            this.f55054l = new Rect();
            this.f55055m = new Path();
            this.f55056n = new DashPathEffect(new float[]{10.0f, 5.0f}, 0.0f);
            this.f55046d.setStyle(Paint.Style.STROKE);
            this.f55046d.setStrokeWidth(TagGroup.this.E);
            this.f55047e.setStyle(Paint.Style.FILL);
            this.f55048f.setStyle(Paint.Style.FILL);
            this.f55048f.setStrokeWidth(4.0f);
            this.f55048f.setColor(TagGroup.this.B);
            setPadding(TagGroup.this.I, TagGroup.this.J, TagGroup.this.I, TagGroup.this.J);
            setLayoutParams(new c(-2, -2));
            setGravity(17);
            setText(charSequence);
            setTextSize(0, TagGroup.this.F);
            this.f55043a = i9;
            setClickable(TagGroup.this.f55028r);
            setFocusable(i9 == 2);
            setFocusableInTouchMode(i9 == 2);
            setHint(i9 == 2 ? TagGroup.this.f55029s : null);
            setMovementMethod(i9 == 2 ? ArrowKeyMovementMethod.getInstance() : null);
            setOnLongClickListener(new a(TagGroup.this, i9));
            if (i9 == 2) {
                requestFocus();
                setOnEditorActionListener(new b(TagGroup.this));
                setOnKeyListener(new c(TagGroup.this));
                addTextChangedListener(new d(TagGroup.this));
            }
            d();
        }

        private void d() {
            if (TagGroup.this.f55028r) {
                if (this.f55043a == 2) {
                    this.f55046d.setColor(TagGroup.this.f55033w);
                    this.f55046d.setPathEffect(this.f55056n);
                    this.f55047e.setColor(TagGroup.this.f55032v);
                    setHintTextColor(TagGroup.this.f55034x);
                    setTextColor(TagGroup.this.f55035y);
                } else {
                    this.f55046d.setPathEffect(null);
                    if (this.f55044b) {
                        this.f55046d.setColor(TagGroup.this.f55036z);
                        this.f55047e.setColor(TagGroup.this.C);
                        setTextColor(TagGroup.this.A);
                    } else {
                        this.f55046d.setColor(TagGroup.this.f55030t);
                        this.f55047e.setColor(TagGroup.this.f55032v);
                        setTextColor(TagGroup.this.f55031u);
                    }
                }
            } else {
                this.f55046d.setColor(TagGroup.this.f55030t);
                this.f55047e.setColor(TagGroup.this.f55032v);
                setTextColor(TagGroup.this.f55031u);
            }
            if (this.f55045c) {
                this.f55047e.setColor(TagGroup.this.D);
            }
        }

        public void c() {
            setFocusable(false);
            setFocusableInTouchMode(false);
            setHint((CharSequence) null);
            setMovementMethod(null);
            this.f55043a = 1;
            d();
            requestLayout();
        }

        public boolean e() {
            return getText() != null && getText().length() > 0;
        }

        public void f(boolean z10) {
            int i9;
            this.f55044b = z10;
            int i10 = TagGroup.this.I;
            int i11 = TagGroup.this.J;
            if (this.f55044b) {
                i9 = (int) (TagGroup.this.I + (getHeight() / 2.5f) + 3.0f);
            } else {
                i9 = TagGroup.this.I;
            }
            setPadding(i10, i11, i9, TagGroup.this.J);
            d();
        }

        @Override // android.widget.TextView
        protected boolean getDefaultEditable() {
            return true;
        }

        @Override // android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            return new e(super.onCreateInputConnection(editorInfo), true);
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawArc(this.f55049g, -180.0f, 90.0f, true, this.f55047e);
            canvas.drawArc(this.f55049g, -270.0f, 90.0f, true, this.f55047e);
            canvas.drawArc(this.f55050h, -90.0f, 90.0f, true, this.f55047e);
            canvas.drawArc(this.f55050h, 0.0f, 90.0f, true, this.f55047e);
            canvas.drawRect(this.f55051i, this.f55047e);
            canvas.drawRect(this.f55052j, this.f55047e);
            if (this.f55044b) {
                canvas.save();
                canvas.rotate(45.0f, this.f55053k.centerX(), this.f55053k.centerY());
                RectF rectF = this.f55053k;
                float f10 = rectF.left;
                float centerY = rectF.centerY();
                RectF rectF2 = this.f55053k;
                canvas.drawLine(f10, centerY, rectF2.right, rectF2.centerY(), this.f55048f);
                float centerX = this.f55053k.centerX();
                RectF rectF3 = this.f55053k;
                canvas.drawLine(centerX, rectF3.top, rectF3.centerX(), this.f55053k.bottom, this.f55048f);
                canvas.restore();
            }
            canvas.drawPath(this.f55055m, this.f55046d);
            super.onDraw(canvas);
        }

        @Override // android.view.View
        protected void onSizeChanged(int i9, int i10, int i11, int i12) {
            int i13;
            super.onSizeChanged(i9, i10, i11, i12);
            int i14 = (int) TagGroup.this.E;
            int i15 = (int) TagGroup.this.E;
            int i16 = (int) ((i9 + i14) - (TagGroup.this.E * 2.0f));
            int i17 = (int) ((i15 + i10) - (TagGroup.this.E * 2.0f));
            int i18 = i17 - i15;
            float f10 = i14;
            float f11 = i15;
            float f12 = i15 + i18;
            this.f55049g.set(f10, f11, i14 + i18, f12);
            float f13 = i16;
            this.f55050h.set(i16 - i18, f11, f13, f12);
            this.f55055m.reset();
            this.f55055m.addArc(this.f55049g, -180.0f, 90.0f);
            this.f55055m.addArc(this.f55049g, -270.0f, 90.0f);
            this.f55055m.addArc(this.f55050h, -90.0f, 90.0f);
            this.f55055m.addArc(this.f55050h, 0.0f, 90.0f);
            float f14 = i18;
            int i19 = (int) (f14 / 2.0f);
            float f15 = i14 + i19;
            this.f55055m.moveTo(f15, f11);
            float f16 = i16 - i19;
            this.f55055m.lineTo(f16, f11);
            float f17 = i17;
            this.f55055m.moveTo(f15, f17);
            this.f55055m.lineTo(f16, f17);
            float f18 = i15 + i19;
            this.f55055m.moveTo(f10, f18);
            float f19 = i17 - i19;
            this.f55055m.lineTo(f10, f19);
            this.f55055m.moveTo(f13, f18);
            this.f55055m.lineTo(f13, f19);
            this.f55051i.set(f10, f18, f13, f19);
            this.f55052j.set(f15, f11, f16, f17);
            int i20 = i18 / 2;
            int i21 = ((int) (i10 / 2.5f)) / 2;
            this.f55053k.set(((i16 - i13) - TagGroup.this.I) + 3, (i15 + i20) - i21, (i16 - TagGroup.this.I) + 3, (i17 - i20) + i21);
            if (this.f55044b) {
                setPadding(TagGroup.this.I, TagGroup.this.J, (int) (TagGroup.this.I + (f14 / 2.5f) + 3.0f), TagGroup.this.J);
            }
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.f55043a == 2) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                getDrawingRect(this.f55054l);
                this.f55045c = true;
                d();
                invalidate();
            } else if (action != 1) {
                if (action == 2 && !this.f55054l.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    this.f55045c = false;
                    d();
                    invalidate();
                }
            } else {
                this.f55045c = false;
                d();
                invalidate();
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    public TagGroup(Context context) {
        this(context, null);
    }

    public void A() {
        f inputTag = getInputTag();
        if (inputTag == null || !inputTag.e()) {
            return;
        }
        inputTag.c();
        d dVar = this.K;
        if (dVar != null) {
            dVar.a(this, inputTag.getText().toString());
        }
        t();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    protected f getCheckedTag() {
        int checkedTagIndex = getCheckedTagIndex();
        if (checkedTagIndex != -1) {
            return y(checkedTagIndex);
        }
        return null;
    }

    protected int getCheckedTagIndex() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (y(i9).f55044b) {
                return i9;
            }
        }
        return -1;
    }

    protected f getInputTag() {
        f y10;
        if (this.f55028r && (y10 = y(getChildCount() - 1)) != null && y10.f55043a == 2) {
            return y10;
        }
        return null;
    }

    public String getInputTagText() {
        f inputTag = getInputTag();
        if (inputTag != null) {
            return inputTag.getText().toString();
        }
        return null;
    }

    protected f getLastNormalTagView() {
        return y(this.f55028r ? getChildCount() - 2 : getChildCount() - 1);
    }

    public String[] getTags() {
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < childCount; i9++) {
            f y10 = y(i9);
            if (y10.f55043a == 1) {
                arrayList.add(y10.getText().toString());
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i11 - i9) - getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = getChildCount();
        int i13 = paddingLeft;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                if (i13 + measuredWidth > paddingRight) {
                    paddingTop += i14 + this.H;
                    i13 = paddingLeft;
                    i14 = measuredHeight;
                } else {
                    i14 = Math.max(i14, measuredHeight);
                }
                childAt.layout(i13, paddingTop, i13 + measuredWidth, measuredHeight + paddingTop);
                i13 += measuredWidth + this.G;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        measureChildren(i9, i10);
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                int i16 = i14 + measuredWidth;
                if (i16 > size) {
                    i11 += i12 + this.H;
                    i13++;
                } else {
                    measuredHeight = Math.max(i12, measuredHeight);
                    measuredWidth = i16;
                }
                i14 = measuredWidth + this.G;
                i12 = measuredHeight;
            }
        }
        int paddingTop = i11 + i12 + getPaddingTop() + getPaddingBottom();
        int paddingLeft = i13 == 0 ? i14 + getPaddingLeft() + getPaddingRight() : size;
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setTags(savedState.f55038b);
        f y10 = y(savedState.f55039c);
        if (y10 != null) {
            y10.f(true);
        }
        if (getInputTag() != null) {
            getInputTag().setText(savedState.f55040d);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f55038b = getTags();
        savedState.f55039c = getCheckedTagIndex();
        if (getInputTag() != null) {
            savedState.f55040d = getInputTag().getText().toString();
        }
        return savedState;
    }

    public void setOnTagChangeListener(d dVar) {
        this.K = dVar;
    }

    public void setOnTagClickListener(e eVar) {
        this.L = eVar;
    }

    public void setTags(List<String> list) {
        setTags((String[]) list.toArray(new String[list.size()]));
    }

    protected void t() {
        u(null);
    }

    protected void u(String str) {
        if (getInputTag() == null) {
            f fVar = new f(getContext(), 2, str);
            fVar.setOnClickListener(this.M);
            addView(fVar);
            return;
        }
        throw new IllegalStateException("Already has a INPUT tag in group.");
    }

    protected void v(CharSequence charSequence) {
        f fVar = new f(getContext(), 1, charSequence);
        fVar.setOnClickListener(this.M);
        addView(fVar);
    }

    protected void w(f fVar) {
        removeView(fVar);
        d dVar = this.K;
        if (dVar != null) {
            dVar.b(this, fVar.getText().toString());
        }
    }

    public float x(float f10) {
        return TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }

    protected f y(int i9) {
        return (f) getChildAt(i9);
    }

    public float z(float f10) {
        return TypedValue.applyDimension(2, f10, getResources().getDisplayMetrics());
    }

    public TagGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.tagGroupStyle);
    }

    public void setTags(String... strArr) {
        removeAllViews();
        for (String str : strArr) {
            v(str);
        }
        if (this.f55028r) {
            t();
        }
    }

    public TagGroup(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        int rgb = Color.rgb(73, 193, 32);
        this.f55011a = rgb;
        int rgb2 = Color.rgb(73, 193, 32);
        this.f55012b = rgb2;
        this.f55013c = -1;
        int rgb3 = Color.rgb(170, 170, 170);
        this.f55014d = rgb3;
        int argb = Color.argb(128, 0, 0, 0);
        this.f55015e = argb;
        int argb2 = Color.argb(222, 0, 0, 0);
        this.f55016f = argb2;
        int rgb4 = Color.rgb(73, 193, 32);
        this.f55017g = rgb4;
        this.f55018h = -1;
        this.f55019i = -1;
        int rgb5 = Color.rgb(73, 193, 32);
        this.f55020j = rgb5;
        int rgb6 = Color.rgb(237, 237, 237);
        this.f55021k = rgb6;
        this.M = new b();
        float x10 = x(0.5f);
        this.f55022l = x10;
        float z10 = z(13.0f);
        this.f55023m = z10;
        float x11 = x(8.0f);
        this.f55024n = x11;
        float x12 = x(4.0f);
        this.f55025o = x12;
        float x13 = x(12.0f);
        this.f55026p = x13;
        float x14 = x(3.0f);
        this.f55027q = x14;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TagGroup, i9, R$style.TagGroup);
        try {
            this.f55028r = obtainStyledAttributes.getBoolean(R$styleable.TagGroup_atg_isAppendMode, false);
            this.f55029s = obtainStyledAttributes.getText(R$styleable.TagGroup_atg_inputHint);
            this.f55030t = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_borderColor, rgb);
            this.f55031u = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_textColor, rgb2);
            this.f55032v = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_backgroundColor, -1);
            this.f55033w = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_dashBorderColor, rgb3);
            this.f55034x = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_inputHintColor, argb);
            this.f55035y = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_inputTextColor, argb2);
            this.f55036z = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_checkedBorderColor, rgb4);
            this.A = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_checkedTextColor, -1);
            this.B = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_checkedMarkerColor, -1);
            this.C = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_checkedBackgroundColor, rgb5);
            this.D = obtainStyledAttributes.getColor(R$styleable.TagGroup_atg_pressedBackgroundColor, rgb6);
            this.E = obtainStyledAttributes.getDimension(R$styleable.TagGroup_atg_borderStrokeWidth, x10);
            this.F = obtainStyledAttributes.getDimension(R$styleable.TagGroup_atg_textSize, z10);
            this.G = (int) obtainStyledAttributes.getDimension(R$styleable.TagGroup_atg_horizontalSpacing, x11);
            this.H = (int) obtainStyledAttributes.getDimension(R$styleable.TagGroup_atg_verticalSpacing, x12);
            this.I = (int) obtainStyledAttributes.getDimension(R$styleable.TagGroup_atg_horizontalPadding, x13);
            this.J = (int) obtainStyledAttributes.getDimension(R$styleable.TagGroup_atg_verticalPadding, x14);
            obtainStyledAttributes.recycle();
            if (this.f55028r) {
                t();
                setOnClickListener(new a());
            }
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f55037a;

        /* renamed from: b  reason: collision with root package name */
        String[] f55038b;

        /* renamed from: c  reason: collision with root package name */
        int f55039c;

        /* renamed from: d  reason: collision with root package name */
        String f55040d;

        /* loaded from: classes7.dex */
        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            int readInt = parcel.readInt();
            this.f55037a = readInt;
            String[] strArr = new String[readInt];
            this.f55038b = strArr;
            parcel.readStringArray(strArr);
            this.f55039c = parcel.readInt();
            this.f55040d = parcel.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            int length = this.f55038b.length;
            this.f55037a = length;
            parcel.writeInt(length);
            parcel.writeStringArray(this.f55038b);
            parcel.writeInt(this.f55039c);
            parcel.writeString(this.f55040d);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
