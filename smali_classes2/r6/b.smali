.class public Lr6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6/b$b;
    }
.end annotation


# static fields
.field private static final a:Lr6/a;

.field private static volatile b:Lr6/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr6/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr6/b$b;-><init>(Lr6/b$a;)V

    sput-object v0, Lr6/b;->a:Lr6/a;

    .line 2
    sput-object v0, Lr6/b;->b:Lr6/a;

    return-void
.end method

.method public static a()Lr6/a;
    .locals 1

    sget-object v0, Lr6/b;->b:Lr6/a;

    return-object v0
.end method
