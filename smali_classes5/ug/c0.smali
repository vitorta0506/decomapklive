.class public final Lug/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lug/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lug/c0$a;

    invoke-direct {v0}, Lug/c0$a;-><init>()V

    sput-object v0, Lug/c0;->a:Lug/b0;

    return-void
.end method

.method public static a()Lug/b0;
    .locals 1

    sget-object v0, Lug/c0;->a:Lug/b0;

    return-object v0
.end method
