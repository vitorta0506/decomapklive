.class public final synthetic Lj9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/views/SvgaImageViewV2;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/d;->a:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj9/d;->a:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->a(Lcom/guochao/faceshow/views/SvgaImageViewV2;Ljava/lang/Boolean;)V

    return-void
.end method
