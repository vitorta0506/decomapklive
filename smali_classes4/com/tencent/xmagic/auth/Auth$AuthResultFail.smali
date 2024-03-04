.class public Lcom/tencent/xmagic/auth/Auth$AuthResultFail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/auth/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthResultFail"
.end annotation


# instance fields
.field public final code:I

.field public final msg:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;->code:I

    .line 4
    invoke-static {p1}, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;->errorMsgForCode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;->msg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILcom/tencent/xmagic/auth/Auth$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;-><init>(I)V

    return-void
.end method

.method private static errorMsgForCode(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_0:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_1:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 3
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_2:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x10

    if-ne p0, v0, :cond_3

    .line 4
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_16:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 5
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v0, -0xa

    if-eq p0, v0, :cond_25

    const/16 v0, -0xb

    if-eq p0, v0, :cond_25

    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_5

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->error_1002:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_6

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->error_1003:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 v0, 0x415

    if-ne p0, v0, :cond_7

    .line 8
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_1045:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v0, 0x7d2

    if-ne p0, v0, :cond_8

    .line 9
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_2002:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v0, 0x7d3

    if-ne p0, v0, :cond_9

    .line 10
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_2003:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 v0, 0x7d4

    if-ne p0, v0, :cond_a

    .line 11
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_2004:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 v0, 0xbbb

    if-ne p0, v0, :cond_b

    .line 12
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3003:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, 0xbbc

    if-ne p0, v0, :cond_c

    .line 13
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3004:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v0, 0xbbd

    if-ne p0, v0, :cond_d

    .line 14
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3005:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 v0, 0xbbe

    if-ne p0, v0, :cond_e

    .line 15
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3006:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 v0, 0xbbf

    if-ne p0, v0, :cond_f

    .line 16
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3007:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 v0, 0xbc0

    if-ne p0, v0, :cond_10

    .line 17
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3008:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/16 v0, 0xbc5

    if-ne p0, v0, :cond_11

    .line 18
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3013:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/16 v0, 0xbc6

    if-ne p0, v0, :cond_12

    .line 19
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3014:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/16 v0, 0xbc7

    if-ne p0, v0, :cond_13

    .line 20
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3015:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/16 v0, 0xbc8

    if-ne p0, v0, :cond_14

    .line 21
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3016:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const/16 v0, 0xbc9

    if-ne p0, v0, :cond_15

    .line 22
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3017:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/16 v0, 0xbca

    if-ne p0, v0, :cond_16

    .line 23
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3018:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/16 v0, 0xbcb

    if-ne p0, v0, :cond_17

    .line 24
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3019:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const/16 v0, 0xbce

    if-ne p0, v0, :cond_18

    .line 25
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_3022:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const/16 v0, 0xfa1

    if-ne p0, v0, :cond_19

    .line 26
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_4001:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 v0, 0xfa3

    if-ne p0, v0, :cond_1a

    .line 27
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_4003:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const/16 v0, -0x3e9

    if-ne p0, v0, :cond_1b

    .line 28
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1001:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const/16 v0, -0x3ed

    if-ne p0, v0, :cond_1c

    .line 29
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1005:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const/16 v0, -0x450

    if-ne p0, v0, :cond_1d

    .line 30
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1104:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/16 v0, -0x515

    if-ne p0, v0, :cond_1e

    .line 31
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1301:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const/16 v0, -0x516

    if-ne p0, v0, :cond_1f

    .line 32
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1302:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/16 v0, -0x579

    if-ne p0, v0, :cond_20

    .line 33
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1401:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/16 v0, -0x57a

    if-ne p0, v0, :cond_21

    .line 34
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1402:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const/16 v0, -0x57d

    if-ne p0, v0, :cond_22

    .line 35
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1405:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/16 v0, -0x57f

    if-ne p0, v0, :cond_23

    .line 36
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n1407:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_23
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/xmagic/R$string;->error_9999:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x270f

    if-ne p0, v1, :cond_24

    goto :goto_0

    .line 38
    :cond_24
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_unknow:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 39
    :cond_25
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->access$200()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/xmagic/R$string;->error_n10:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
