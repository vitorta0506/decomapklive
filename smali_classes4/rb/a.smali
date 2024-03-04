.class public abstract Lrb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb/a$a;
    }
.end annotation


# static fields
.field private static final a:Lrb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb/a;

    invoke-direct {v0}, Lvb/a;-><init>()V

    sput-object v0, Lrb/a;->a:Lrb/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
