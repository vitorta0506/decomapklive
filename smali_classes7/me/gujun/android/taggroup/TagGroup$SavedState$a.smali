.class final Lme/gujun/android/taggroup/TagGroup$SavedState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lme/gujun/android/taggroup/TagGroup$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lme/gujun/android/taggroup/TagGroup$SavedState;
    .locals 1

    new-instance v0, Lme/gujun/android/taggroup/TagGroup$SavedState;

    invoke-direct {v0, p1}, Lme/gujun/android/taggroup/TagGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lme/gujun/android/taggroup/TagGroup$SavedState;
    .locals 0

    new-array p1, p1, [Lme/gujun/android/taggroup/TagGroup$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lme/gujun/android/taggroup/TagGroup$SavedState$a;->a(Landroid/os/Parcel;)Lme/gujun/android/taggroup/TagGroup$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lme/gujun/android/taggroup/TagGroup$SavedState$a;->b(I)[Lme/gujun/android/taggroup/TagGroup$SavedState;

    move-result-object p1

    return-object p1
.end method
