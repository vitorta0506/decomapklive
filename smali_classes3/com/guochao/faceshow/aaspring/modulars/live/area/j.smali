.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/area/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->a(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
