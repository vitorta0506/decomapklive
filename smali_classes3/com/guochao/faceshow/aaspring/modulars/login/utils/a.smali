.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/a;->a:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "facebook_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "twitter_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lm9/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "ins_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "line_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "vk_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "wechat_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "weibo_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "qq_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    const-string v3, "g_authority_success_2737"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
