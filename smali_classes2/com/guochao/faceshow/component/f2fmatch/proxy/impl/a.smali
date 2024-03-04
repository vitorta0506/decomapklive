.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;->b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/a;->b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->c(Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/View;)V

    return-void
.end method
