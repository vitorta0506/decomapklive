.class public final Lsh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh/a$b;
    }
.end annotation


# static fields
.field private static final a:Lio/reactivex/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsh/a$a;

    invoke-direct {v0}, Lsh/a$a;-><init>()V

    invoke-static {v0}, Lrh/a;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/s;

    move-result-object v0

    sput-object v0, Lsh/a;->a:Lio/reactivex/s;

    return-void
.end method

.method public static a()Lio/reactivex/s;
    .locals 1

    sget-object v0, Lsh/a;->a:Lio/reactivex/s;

    invoke-static {v0}, Lrh/a;->e(Lio/reactivex/s;)Lio/reactivex/s;

    move-result-object v0

    return-object v0
.end method
