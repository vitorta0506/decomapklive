.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/u;->a:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/u;->a:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->a(Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;)V

    return-void
.end method
