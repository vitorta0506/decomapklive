.class public final Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;",
        "",
        "()V",
        "convert",
        "Lcom/guochao/faceshow/session/model/UserSessionModel;",
        "userBean",
        "Lcom/guochao/faceshow/bean/UserBean;",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/guochao/faceshow/bean/UserBean;)Lcom/guochao/faceshow/session/model/UserSessionModel;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setNickName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setSignature(Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setUserAvatar(Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setUserSmallAvatar(Ljava/lang/String;)V

    .line 7
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setGender(I)V

    .line 9
    iget-object v1, p1, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v2, "userBean.tencentSignature ?: \"\""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setImUserSig(Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->setPhoneNumber(Ljava/lang/String;)V

    return-object v0
.end method
