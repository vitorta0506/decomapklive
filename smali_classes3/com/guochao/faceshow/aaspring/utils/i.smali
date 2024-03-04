.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/i;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/i;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->g(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Ljava/util/List;)V

    return-void
.end method
