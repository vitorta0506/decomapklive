.class Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->h(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;->b:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;->b:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->b(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;->b:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$b;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->e(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Ljava/lang/CharSequence;)V

    return-void
.end method
