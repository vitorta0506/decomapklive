.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/k;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/k;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->k(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    return-void
.end method
