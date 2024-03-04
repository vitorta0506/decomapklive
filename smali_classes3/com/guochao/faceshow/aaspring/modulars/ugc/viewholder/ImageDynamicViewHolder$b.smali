.class Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method
