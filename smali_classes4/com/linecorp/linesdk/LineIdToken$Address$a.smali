.class final Lcom/linecorp/linesdk/LineIdToken$Address$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/LineIdToken$Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/linecorp/linesdk/LineIdToken$Address;",
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
.method public a(Landroid/os/Parcel;)Lcom/linecorp/linesdk/LineIdToken$Address;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$Address;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/LineIdToken$Address;-><init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/LineIdToken$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/linecorp/linesdk/LineIdToken$Address;
    .locals 0

    new-array p1, p1, [Lcom/linecorp/linesdk/LineIdToken$Address;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineIdToken$Address$a;->a(Landroid/os/Parcel;)Lcom/linecorp/linesdk/LineIdToken$Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineIdToken$Address$a;->b(I)[Lcom/linecorp/linesdk/LineIdToken$Address;

    move-result-object p1

    return-object p1
.end method
