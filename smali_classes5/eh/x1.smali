.class abstract Leh/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/l1$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(Lhh/q;)Leh/x1;
    .locals 1

    new-instance v0, Leh/u;

    invoke-direct {v0, p0}, Leh/u;-><init>(Lhh/q;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/envoy.extensions.filters.http.rbac.v3.RBAC"

    return-object v0
.end method

.method abstract b()Lhh/q;
.end method
