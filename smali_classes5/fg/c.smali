.class final Lfg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfg/c$c;,
        Lfg/c$d;,
        Lfg/c$b;
    }
.end annotation


# static fields
.field static final a:Lio/grpc/internal/f2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/f2$d<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfg/c$b;

    const-string v1, "metadata.google.internal.:8080"

    invoke-direct {v0, v1}, Lfg/c$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfg/c;->a:Lio/grpc/internal/f2$d;

    return-void
.end method
