package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.Profile;
import com.facebook.ProfileTracker;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.R$dimen;
import com.facebook.login.R$drawable;
import com.facebook.login.R$styleable;
/* loaded from: classes.dex */
public class ProfilePictureView extends FrameLayout {

    /* renamed from: l  reason: collision with root package name */
    public static final String f5055l = ProfilePictureView.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private String f5056a;

    /* renamed from: b  reason: collision with root package name */
    private int f5057b;

    /* renamed from: c  reason: collision with root package name */
    private int f5058c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5059d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f5060e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f5061f;

    /* renamed from: g  reason: collision with root package name */
    private int f5062g;

    /* renamed from: h  reason: collision with root package name */
    private ImageRequest f5063h;

    /* renamed from: i  reason: collision with root package name */
    private c f5064i;

    /* renamed from: j  reason: collision with root package name */
    private Bitmap f5065j;

    /* renamed from: k  reason: collision with root package name */
    private ProfileTracker f5066k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends ProfileTracker {
        a() {
        }

        @Override // com.facebook.ProfileTracker
        protected void onCurrentProfileChanged(Profile profile, Profile profile2) {
            ProfilePictureView.this.setProfileId(profile2 != null ? profile2.getId() : null);
            ProfilePictureView.this.h(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements ImageRequest.Callback {
        b() {
        }

        @Override // com.facebook.internal.ImageRequest.Callback
        public void onCompleted(ImageResponse imageResponse) {
            ProfilePictureView.this.g(imageResponse);
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void onError(FacebookException facebookException);
    }

    public ProfilePictureView(Context context) {
        super(context);
        this.f5057b = 0;
        this.f5058c = 0;
        this.f5059d = true;
        this.f5062g = -1;
        this.f5065j = null;
        d(context);
    }

    private int c(boolean z10) {
        int i9;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            int i10 = this.f5062g;
            if (i10 == -4) {
                i9 = R$dimen.com_facebook_profilepictureview_preset_size_large;
            } else if (i10 == -3) {
                i9 = R$dimen.com_facebook_profilepictureview_preset_size_normal;
            } else if (i10 == -2) {
                i9 = R$dimen.com_facebook_profilepictureview_preset_size_small;
            } else if (i10 != -1 || !z10) {
                return 0;
            } else {
                i9 = R$dimen.com_facebook_profilepictureview_preset_size_normal;
            }
            return getResources().getDimensionPixelSize(i9);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return 0;
        }
    }

    private void d(Context context) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            removeAllViews();
            this.f5061f = new ImageView(context);
            this.f5061f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f5061f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            addView(this.f5061f);
            this.f5066k = new a();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private void f(AttributeSet attributeSet) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.com_facebook_profile_picture_view);
            setPresetSize(obtainStyledAttributes.getInt(R$styleable.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
            this.f5059d = obtainStyledAttributes.getBoolean(R$styleable.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(ImageResponse imageResponse) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (imageResponse.getRequest() == this.f5063h) {
                this.f5063h = null;
                Bitmap bitmap = imageResponse.getBitmap();
                Exception error = imageResponse.getError();
                if (error == null) {
                    if (bitmap != null) {
                        setImageBitmap(bitmap);
                        if (imageResponse.isCachedRedirect()) {
                            i(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                c cVar = this.f5064i;
                if (cVar != null) {
                    cVar.onError(new FacebookException("Error in downloading profile picture for profileId: " + getProfileId(), error));
                    return;
                }
                Logger.log(LoggingBehavior.REQUESTS, 6, f5055l, error.toString());
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(boolean z10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            boolean k10 = k();
            String str = this.f5056a;
            if (str != null && str.length() != 0 && (this.f5058c != 0 || this.f5057b != 0)) {
                if (k10 || z10) {
                    i(true);
                    return;
                }
                return;
            }
            j();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private void i(boolean z10) {
        Uri profilePictureUri;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Uri profilePictureUri2 = ImageRequest.getProfilePictureUri(this.f5056a, this.f5058c, this.f5057b, AccessToken.isCurrentAccessTokenActive() ? AccessToken.getCurrentAccessToken().getToken() : "");
            Profile currentProfile = Profile.getCurrentProfile();
            if (AccessToken.isLoggedInWithInstagram() && currentProfile != null && (profilePictureUri = currentProfile.getProfilePictureUri(this.f5058c, this.f5057b)) != null) {
                profilePictureUri2 = profilePictureUri;
            }
            ImageRequest build = new ImageRequest.Builder(getContext(), profilePictureUri2).setAllowCachedRedirects(z10).setCallerTag(this).setCallback(new b()).build();
            ImageRequest imageRequest = this.f5063h;
            if (imageRequest != null) {
                ImageDownloader.cancelRequest(imageRequest);
            }
            this.f5063h = build;
            ImageDownloader.downloadAsync(build);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private void j() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ImageRequest imageRequest = this.f5063h;
            if (imageRequest != null) {
                ImageDownloader.cancelRequest(imageRequest);
            }
            if (this.f5065j == null) {
                setImageBitmap(BitmapFactory.decodeResource(getResources(), e() ? R$drawable.com_facebook_profile_picture_blank_square : R$drawable.com_facebook_profile_picture_blank_portrait));
                return;
            }
            k();
            setImageBitmap(Bitmap.createScaledBitmap(this.f5065j, this.f5058c, this.f5057b, false));
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private boolean k() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            int height = getHeight();
            int width = getWidth();
            boolean z10 = true;
            if (width >= 1 && height >= 1) {
                int c10 = c(false);
                if (c10 != 0) {
                    height = c10;
                    width = height;
                }
                if (width <= height) {
                    height = e() ? width : 0;
                } else {
                    width = e() ? height : 0;
                }
                if (width == this.f5058c && height == this.f5057b) {
                    z10 = false;
                }
                this.f5058c = width;
                this.f5057b = height;
                return z10;
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    private void setImageBitmap(Bitmap bitmap) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ImageView imageView = this.f5061f;
            if (imageView == null || bitmap == null) {
                return;
            }
            this.f5060e = bitmap;
            imageView.setImageBitmap(bitmap);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final boolean e() {
        return this.f5059d;
    }

    public final c getOnErrorListener() {
        return this.f5064i;
    }

    public final int getPresetSize() {
        return this.f5062g;
    }

    public final String getProfileId() {
        return this.f5056a;
    }

    public final boolean getShouldUpdateOnProfileChange() {
        return this.f5066k.isTracking();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5063h = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        h(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        boolean z10;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i9);
        boolean z11 = true;
        if (View.MeasureSpec.getMode(i10) == 1073741824 || layoutParams.height != -2) {
            z10 = false;
        } else {
            size = c(true);
            i10 = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
            z10 = true;
        }
        if (View.MeasureSpec.getMode(i9) == 1073741824 || layoutParams.width != -2) {
            z11 = z10;
        } else {
            size2 = c(true);
            i9 = View.MeasureSpec.makeMeasureSpec(size2, BasicMeasure.EXACTLY);
        }
        if (z11) {
            setMeasuredDimension(size2, size);
            measureChildren(i9, i10);
            return;
        }
        super.onMeasure(i9, i10);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        this.f5056a = bundle.getString("ProfilePictureView_profileId");
        this.f5062g = bundle.getInt("ProfilePictureView_presetSize");
        this.f5059d = bundle.getBoolean("ProfilePictureView_isCropped");
        this.f5058c = bundle.getInt("ProfilePictureView_width");
        this.f5057b = bundle.getInt("ProfilePictureView_height");
        h(true);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.f5056a);
        bundle.putInt("ProfilePictureView_presetSize", this.f5062g);
        bundle.putBoolean("ProfilePictureView_isCropped", this.f5059d);
        bundle.putInt("ProfilePictureView_width", this.f5058c);
        bundle.putInt("ProfilePictureView_height", this.f5057b);
        bundle.putBoolean("ProfilePictureView_refresh", this.f5063h != null);
        return bundle;
    }

    public final void setCropped(boolean z10) {
        this.f5059d = z10;
        h(false);
    }

    public final void setDefaultProfilePicture(Bitmap bitmap) {
        this.f5065j = bitmap;
    }

    public final void setOnErrorListener(c cVar) {
        this.f5064i = cVar;
    }

    public final void setPresetSize(int i9) {
        if (i9 != -4 && i9 != -3 && i9 != -2 && i9 != -1) {
            throw new IllegalArgumentException("Must use a predefined preset size");
        }
        this.f5062g = i9;
        requestLayout();
    }

    public final void setProfileId(@Nullable String str) {
        boolean z10;
        if (Utility.isNullOrEmpty(this.f5056a) || !this.f5056a.equalsIgnoreCase(str)) {
            j();
            z10 = true;
        } else {
            z10 = false;
        }
        this.f5056a = str;
        h(z10);
    }

    public final void setShouldUpdateOnProfileChange(boolean z10) {
        if (z10) {
            this.f5066k.startTracking();
        } else {
            this.f5066k.stopTracking();
        }
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5057b = 0;
        this.f5058c = 0;
        this.f5059d = true;
        this.f5062g = -1;
        this.f5065j = null;
        d(context);
        f(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f5057b = 0;
        this.f5058c = 0;
        this.f5059d = true;
        this.f5062g = -1;
        this.f5065j = null;
        d(context);
        f(attributeSet);
    }
}
