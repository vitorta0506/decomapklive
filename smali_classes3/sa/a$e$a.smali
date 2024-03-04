.class Lsa/a$e$a;
.super Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/a$e;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/a$e;


# direct methods
.method constructor <init>(Lsa/a$e;Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0

    iput-object p1, p0, Lsa/a$e$a;->a:Lsa/a$e;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    return-void
.end method


# virtual methods
.method public onVideoComplete(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lsa/a$e$a;->a:Lsa/a$e;

    iget-object v0, v0, Lsa/a$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lsa/a$e$a;->a:Lsa/a$e;

    iget-object p1, p1, Lsa/a$e;->b:Lsa/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsa/a;->a(Lsa/a;Z)Z

    .line 3
    iget-object p1, p0, Lsa/a$e$a;->a:Lsa/a$e;

    iget-object p1, p1, Lsa/a$e;->b:Lsa/a;

    invoke-static {p1}, Lsa/a;->b(Lsa/a;)V

    return-void
.end method
