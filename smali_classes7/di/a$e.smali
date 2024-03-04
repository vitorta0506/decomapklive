.class final Ldi/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lio/reactivex/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/e;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/e;-><init>()V

    sput-object v0, Ldi/a$e;->a:Lio/reactivex/s;

    return-void
.end method
