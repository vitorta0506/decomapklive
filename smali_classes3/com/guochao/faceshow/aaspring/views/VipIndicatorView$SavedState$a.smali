.class Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;",
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
.method public a(Landroid/os/Parcel;)Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p2
.end method

.method public c(I)[Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState$a;->a(Landroid/os/Parcel;)Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState$a;->c(I)[Lcom/guochao/faceshow/aaspring/views/VipIndicatorView$SavedState;

    move-result-object p1

    return-object p1
.end method
