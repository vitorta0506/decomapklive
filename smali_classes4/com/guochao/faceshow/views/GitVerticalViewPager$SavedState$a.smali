.class Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;",
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
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState$a;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState$a;->b(I)[Lcom/guochao/faceshow/views/GitVerticalViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
