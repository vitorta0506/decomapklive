.class public Lcom/tencent/xmagic/auth/Auth$AuthResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/auth/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthResult"
.end annotation


# instance fields
.field public final authInfo:Lcom/tencent/xmagic/auth/Auth$AuthInfo;

.field public final authResultFail:Lcom/tencent/xmagic/auth/Auth$AuthResultFail;

.field public final authResultSucceed:Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;

.field public final isSucceed:Z


# direct methods
.method private constructor <init>(ILcom/tencent/xmagic/auth/Auth$AuthInfo;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthResult;->isSucceed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance v2, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;

    invoke-direct {v2, v1}, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;-><init>(Lcom/tencent/xmagic/auth/Auth$1;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/tencent/xmagic/auth/Auth$AuthResult;->authResultSucceed:Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    new-instance v0, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;

    invoke-direct {v0, p1, v1}, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;-><init>(ILcom/tencent/xmagic/auth/Auth$1;)V

    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/tencent/xmagic/auth/Auth$AuthResult;->authResultFail:Lcom/tencent/xmagic/auth/Auth$AuthResultFail;

    .line 6
    iput-object p2, p0, Lcom/tencent/xmagic/auth/Auth$AuthResult;->authInfo:Lcom/tencent/xmagic/auth/Auth$AuthInfo;

    return-void
.end method

.method synthetic constructor <init>(ILcom/tencent/xmagic/auth/Auth$AuthInfo;Lcom/tencent/xmagic/auth/Auth$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/auth/Auth$AuthResult;-><init>(ILcom/tencent/xmagic/auth/Auth$AuthInfo;)V

    return-void
.end method
