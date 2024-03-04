.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;


# direct methods
.method public synthetic constructor <init>(ZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;->a:Z

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;->a:Z

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->f(ZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
