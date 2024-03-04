package com.linecorp.linesdk.dialog.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.linecorp.linesdk.R$drawable;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.dialog.internal.TargetUser;
import com.squareup.picasso.Picasso;
/* loaded from: classes4.dex */
public class UserThumbnailView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f28145a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f28146b;

    public UserThumbnailView(Context context) {
        super(context);
        a();
    }

    private void a() {
        ViewGroup.inflate(getContext(), R$layout.target_user_thumbnail, this);
        this.f28145a = (TextView) findViewById(R$id.textViewDisplayName);
        this.f28146b = (ImageView) findViewById(R$id.imageViewTargetUser);
    }

    public void setTargetUser(TargetUser targetUser) {
        this.f28145a.setText(targetUser.a());
        Picasso.get().j(targetUser.b()).i(targetUser.e() == TargetUser.Type.FRIEND ? R$drawable.friend_thumbnail : R$drawable.group_thumbnail).f(this.f28146b);
    }
}
