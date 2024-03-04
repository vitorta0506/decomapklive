.class final Lcn/jiguang/b/c$1;
.super Lcn/jiguang/bg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/b/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/b/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcn/jiguang/bg/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/b/c$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/b/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
