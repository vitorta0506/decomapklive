.class Leh/d2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/l1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/envoy.extensions.filters.http.router.v3.Router"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ROUTER_CONFIG"

    return-object v0
.end method
