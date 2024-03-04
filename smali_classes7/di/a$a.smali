.class final Ldi/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lio/reactivex/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/b;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/b;-><init>()V

    sput-object v0, Ldi/a$a;->a:Lio/reactivex/s;

    return-void
.end method
