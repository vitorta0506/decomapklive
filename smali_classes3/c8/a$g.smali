.class public abstract Lc8/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsLoadListener;
.implements Lcom/unity3d/ads/IUnityAdsShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "g"
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field final synthetic b:Lc8/a;


# direct methods
.method public constructor <init>(Lc8/a;)V
    .locals 0

    iput-object p1, p0, Lc8/a$g;->b:Lc8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lc8/a$g;->a:Landroid/app/Activity;

    return-void
.end method
