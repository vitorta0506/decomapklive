.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/a;->a:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/a;->a:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->e0(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V

    return-void
.end method
