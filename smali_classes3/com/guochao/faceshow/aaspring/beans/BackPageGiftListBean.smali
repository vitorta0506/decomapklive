.class public final Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean;",
        "",
        "()V",
        "code",
        "",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "data",
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;",
        "getData",
        "()Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;",
        "setData",
        "(Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;)V",
        "Result",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean;->code:I

    return v0
.end method

.method public final getData()Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean;->data:Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean;->code:I

    return-void
.end method

.method public final setData(Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean;->data:Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;

    return-void
.end method
