.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Laa/b;

.field public final synthetic b:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Laa/b;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/h;->a:Laa/b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/h;->b:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/h;->a:Laa/b;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/h;->b:Landroidx/lifecycle/Observer;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->l(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V

    return-void
.end method
