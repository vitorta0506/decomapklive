.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

.field public final synthetic d:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->a:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->c:Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->d:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->a:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->c:Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/b;->d:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->a(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/view/View;)V

    return-void
.end method
