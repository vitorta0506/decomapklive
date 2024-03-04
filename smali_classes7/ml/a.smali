.class public final Lml/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lml/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lml/c;

    invoke-direct {v0}, Lml/c;-><init>()V

    sput-object v0, Lml/a;->a:Lml/b;

    return-void
.end method

.method public static a()Lml/b;
    .locals 1

    sget-object v0, Lml/a;->a:Lml/b;

    return-object v0
.end method
