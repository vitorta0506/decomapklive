package com.guochao.faceshow.mine.picdrag.view;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class PictureEditView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f25465a;

    /* renamed from: b  reason: collision with root package name */
    private GridLayoutManager f25466b;

    /* renamed from: c  reason: collision with root package name */
    private PictureDragAdapter f25467c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f25468d;

    /* renamed from: e  reason: collision with root package name */
    private ItemTouchHelper f25469e;

    /* renamed from: f  reason: collision with root package name */
    private b f25470f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends ItemTouchHelper.Callback {
        a() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
            if (r4.isIllegal() != false) goto L16;
         */
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getMovementFlags(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r3, @androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView.ViewHolder r4) {
            /*
                r2 = this;
                r3 = 0
                int r4 = r4.getAdapterPosition()     // Catch: java.lang.Exception -> L34
                if (r4 < 0) goto L33
                com.guochao.faceshow.mine.picdrag.view.PictureEditView r0 = com.guochao.faceshow.mine.picdrag.view.PictureEditView.this     // Catch: java.lang.Exception -> L34
                com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter r0 = com.guochao.faceshow.mine.picdrag.view.PictureEditView.a(r0)     // Catch: java.lang.Exception -> L34
                java.util.List r0 = r0.getData()     // Catch: java.lang.Exception -> L34
                int r0 = r0.size()     // Catch: java.lang.Exception -> L34
                if (r4 <= r0) goto L18
                goto L33
            L18:
                com.guochao.faceshow.mine.picdrag.view.PictureEditView r0 = com.guochao.faceshow.mine.picdrag.view.PictureEditView.this     // Catch: java.lang.Exception -> L34
                com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter r0 = com.guochao.faceshow.mine.picdrag.view.PictureEditView.a(r0)     // Catch: java.lang.Exception -> L34
                java.util.List r0 = r0.getData()     // Catch: java.lang.Exception -> L34
                java.lang.Object r4 = r0.get(r4)     // Catch: java.lang.Exception -> L34
                com.guochao.faceshow.aaspring.beans.UserPageBaseData$CoverData r4 = (com.guochao.faceshow.aaspring.beans.UserPageBaseData.CoverData) r4     // Catch: java.lang.Exception -> L34
                int r0 = r4.localType     // Catch: java.lang.Exception -> L34
                r1 = -3
                if (r0 == r1) goto L33
                boolean r4 = r4.isIllegal()     // Catch: java.lang.Exception -> L34
                if (r4 == 0) goto L38
            L33:
                return r3
            L34:
                r4 = move-exception
                r4.printStackTrace()
            L38:
                r4 = 51
                int r3 = androidx.recyclerview.widget.ItemTouchHelper.Callback.makeMovementFlags(r4, r3)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.mine.picdrag.view.PictureEditView.a.getMovementFlags(androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$ViewHolder):int");
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            UserPageBaseData.CoverData coverData = PictureEditView.this.f25467c.getData().get(viewHolder2.getAdapterPosition());
            if (coverData.localType == -3 || coverData.isIllegal()) {
                return false;
            }
            LogUtils.i("PictureEditView", "onMove: " + viewHolder.getAdapterPosition() + "     " + viewHolder2.getAdapterPosition());
            Collections.swap(PictureEditView.this.getData(), viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            PictureEditView.this.f25467c.notifyItemMoved(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i9, @NonNull RecyclerView.ViewHolder viewHolder2, int i10, int i11, int i12) {
            super.onMoved(recyclerView, viewHolder, i9, viewHolder2, i10, i11, i12);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i9) {
            super.onSelectedChanged(viewHolder, i9);
            if (i9 != 0 || PictureEditView.this.f25470f == null) {
                return;
            }
            PictureEditView.this.f25470f.a(PictureEditView.this.f25467c.e());
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            LogUtils.i("PictureEditView", "onSwiped: " + i9 + "      " + viewHolder.getAdapterPosition());
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(List<Integer> list);
    }

    public PictureEditView(Context context) {
        this(context, null);
    }

    private void d() {
        setOrientation(1);
        setGravity(GravityCompat.START);
        setClipChildren(false);
        setPadding(0, DensityUtil.dp2px(16.0f), 0, DensityUtil.dp2px(16.0f));
        LayoutInflater.from(getContext()).inflate(R.layout.picture_edit_view, (ViewGroup) this, true);
        this.f25465a = (RecyclerView) findViewById(R.id.picture_drag_recycleView);
        this.f25468d = (TextView) findViewById(R.id.picture_drag_tip_bottom_text);
        setCount(0);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 4);
        this.f25466b = gridLayoutManager;
        gridLayoutManager.setOrientation(1);
        this.f25465a.setLayoutManager(this.f25466b);
        this.f25465a.getItemAnimator().setChangeDuration(0L);
        this.f25465a.getItemAnimator().setRemoveDuration(0L);
        this.f25465a.getItemAnimator().setAddDuration(0L);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new a());
        this.f25469e = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.f25465a);
        PictureDragAdapter pictureDragAdapter = new PictureDragAdapter(getContext(), this.f25469e);
        this.f25467c = pictureDragAdapter;
        this.f25465a.setAdapter(pictureDragAdapter);
    }

    private void setCount(int i9) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.format("%s %s", i9 + "/8", getResources().getString(R.string.user_page_edit_pic_bottom_text)));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 0, 1, 34);
        this.f25468d.setText(spannableStringBuilder);
    }

    public void c(UserPageBaseData.CoverData coverData) {
        this.f25467c.d(coverData);
        setCount(this.f25467c.g());
    }

    public void e(UserPageBaseData.CoverData coverData, UserPageBaseData.CoverData coverData2) {
        this.f25467c.h(coverData, coverData2);
        setCount(this.f25467c.g());
    }

    public void f() {
        this.f25467c.notifyDataSetChanged();
    }

    public List<UserPageBaseData.CoverData> getData() {
        return this.f25467c.getData();
    }

    public void setData(List<UserPageBaseData.CoverData> list) {
        this.f25467c.setData(list);
        setCount(this.f25467c.g());
    }

    public void setOnItemClickListener(PictureDragAdapter.a aVar) {
        this.f25467c.setOnItemClickListener(aVar);
    }

    public void setOnSortUpdateSortListener(b bVar) {
        this.f25470f = bVar;
    }

    public PictureEditView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PictureEditView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        d();
    }
}
