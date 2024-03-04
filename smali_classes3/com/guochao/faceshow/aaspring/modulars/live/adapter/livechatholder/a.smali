.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/a;->a:Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/a;->a:Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->c(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V

    return-void
.end method
