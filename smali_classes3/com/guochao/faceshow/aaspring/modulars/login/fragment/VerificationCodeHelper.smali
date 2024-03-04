.class public final Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0012\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;",
        "",
        "()V",
        "changeLoginPWD",
        "",
        "getChangeLoginPWD",
        "()J",
        "setChangeLoginPWD",
        "(J)V",
        "emailTime",
        "getEmailTime",
        "setEmailTime",
        "registerAccount",
        "getRegisterAccount",
        "setRegisterAccount",
        "replaceEmailTime",
        "getReplaceEmailTime",
        "setReplaceEmailTime",
        "retrievePassWord",
        "getRetrievePassWord",
        "setRetrievePassWord",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private changeLoginPWD:J

.field private emailTime:J

.field private registerAccount:J

.field private replaceEmailTime:J

.field private retrievePassWord:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion$instance$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->registerAccount:J

    .line 3
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->emailTime:J

    .line 4
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->replaceEmailTime:J

    .line 5
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->changeLoginPWD:J

    .line 6
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->retrievePassWord:J

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getChangeLoginPWD()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->changeLoginPWD:J

    return-wide v0
.end method

.method public final getEmailTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->emailTime:J

    return-wide v0
.end method

.method public final getRegisterAccount()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->registerAccount:J

    return-wide v0
.end method

.method public final getReplaceEmailTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->replaceEmailTime:J

    return-wide v0
.end method

.method public final getRetrievePassWord()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->retrievePassWord:J

    return-wide v0
.end method

.method public final setChangeLoginPWD(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->changeLoginPWD:J

    return-void
.end method

.method public final setEmailTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->emailTime:J

    return-void
.end method

.method public final setRegisterAccount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->registerAccount:J

    return-void
.end method

.method public final setReplaceEmailTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->replaceEmailTime:J

    return-void
.end method

.method public final setRetrievePassWord(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->retrievePassWord:J

    return-void
.end method
