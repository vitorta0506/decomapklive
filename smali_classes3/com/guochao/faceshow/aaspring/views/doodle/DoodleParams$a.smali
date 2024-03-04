.class Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;",
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
.method public a(Landroid/os/Parcel;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;
    .locals 0

    new-array p1, p1, [Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$a;->a(Landroid/os/Parcel;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$a;->b(I)[Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object p1

    return-object p1
.end method
