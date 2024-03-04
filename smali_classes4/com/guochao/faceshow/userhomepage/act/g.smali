.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/g;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/g;->b:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/g;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/g;->b:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-static {v0, v1, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->g0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method
