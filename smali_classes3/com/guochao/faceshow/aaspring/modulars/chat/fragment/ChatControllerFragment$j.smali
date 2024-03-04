.class abstract Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "j"
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->a:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->a:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    return-object p0
.end method


# virtual methods
.method abstract b(ZLcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
.end method
