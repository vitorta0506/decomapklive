.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

.field public final synthetic c:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;->a:Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;->b:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;->c:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-void
.end method


# virtual methods
.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;->a:Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;->b:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/d;->c:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->d(Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Ljava/lang/String;)V

    return-void
.end method
