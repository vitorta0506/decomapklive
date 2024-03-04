.class public Ly6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/d;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/d;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 4
    :pswitch_2
    new-instance p0, Lm9/a;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lm9/a;-><init>(Landroid/app/Activity;)V

    return-object p0

    .line 5
    :pswitch_3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 6
    :pswitch_4
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 8
    :pswitch_6
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/r;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/r;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 9
    :pswitch_7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/k;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/k;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 10
    :pswitch_8
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;-><init>(Landroid/content/Context;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
