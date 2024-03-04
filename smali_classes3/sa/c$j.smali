.class Lsa/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/data/AnimFlag;

.field final synthetic b:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 0

    iput-object p1, p0, Lsa/c$j;->b:Lsa/c;

    iput-object p2, p0, Lsa/c$j;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsa/c$j;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-object p1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->n:Ljava/lang/String;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lsa/c$j;->b:Lsa/c;

    iget-object p1, p1, Lsa/c;->r:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p0, Lsa/c$j;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-object v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->n:Ljava/lang/String;

    iget-object v0, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
