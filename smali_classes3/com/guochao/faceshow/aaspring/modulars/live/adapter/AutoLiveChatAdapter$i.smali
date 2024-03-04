.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
