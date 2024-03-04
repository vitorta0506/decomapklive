.class abstract Leh/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/l1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/j1$c;,
        Leh/j1$a;,
        Leh/j1$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Leh/j1$b;Leh/j1$a;Ljava/lang/Integer;)Leh/j1;
    .locals 1

    new-instance v0, Leh/o;

    invoke-direct {v0, p0, p1, p2}, Leh/o;-><init>(Leh/j1$b;Leh/j1$a;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/envoy.extensions.filters.http.fault.v3.HTTPFault"

    return-object v0
.end method

.method abstract c()Leh/j1$a;
.end method

.method abstract d()Leh/j1$b;
.end method

.method abstract e()Ljava/lang/Integer;
.end method
