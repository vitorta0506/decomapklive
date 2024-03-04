.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->R(Landroid/text/SpannableStringBuilder;ZLcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
