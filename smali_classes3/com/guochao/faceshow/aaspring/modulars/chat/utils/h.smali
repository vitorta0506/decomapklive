.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, La8/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->b(La8/a;)V

    return-void
.end method
