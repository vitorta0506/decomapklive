.class public Lcn/jiguang/ao/a;
.super Lcn/jiguang/o/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jiguang/ao/a$b;,
        Lcn/jiguang/ao/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcn/jiguang/ap/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/o/e;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/ao/a;->d:Ljava/lang/String;

    const-string p1, "JWake"

    iput-object p1, p0, Lcn/jiguang/o/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Lcn/jiguang/aq/b;->b(Landroid/content/Context;)Lcn/jiguang/ap/a;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/jiguang/aq/c;->a(Lcn/jiguang/ap/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/jiguang/ap/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/jiguang/ap/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "content://"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wake] wakeTargets:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JWake"

    invoke-static {v4, v3}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcn/jiguang/o/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/o/b;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_e

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from_package"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "di"

    invoke-static/range {p0 .. p0}, Lcn/jiguang/o/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "jg_extras"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcn/jiguang/ap/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start wake target:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_1

    const-string/jumbo v0, "wakeTarget is null, continue another wake"

    :goto_1
    invoke-static {v4, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, v7, Lcn/jiguang/ap/c;->c:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command this app is not allow to wake package:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcn/jiguang/ap/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",service:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcn/jiguang/ap/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v9, Lcn/jiguang/ap/b;

    invoke-direct {v9}, Lcn/jiguang/ap/b;-><init>()V

    iget-object v0, v7, Lcn/jiguang/ap/c;->a:Ljava/lang/String;

    iput-object v0, v9, Lcn/jiguang/ap/b;->a:Ljava/lang/String;

    iget v0, v7, Lcn/jiguang/ap/c;->g:I

    const/4 v10, 0x1

    and-int/2addr v0, v10

    const-string v11, "type"

    const/16 v13, 0x65

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcn/jiguang/ap/c;->e:Landroid/content/Intent;

    if-eqz v0, :cond_5

    invoke-static/range {p0 .. p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v14, 0x8

    :try_start_1
    invoke-static {v3}, Lcn/jiguang/aq/c;->a(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v11, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v15, v7, Lcn/jiguang/ap/c;->e:Landroid/content/Intent;

    invoke-static {v1, v0, v15}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v16

    if-nez v16, :cond_3

    iget-object v12, v7, Lcn/jiguang/ap/c;->f:Landroid/content/Intent;

    if-eqz v12, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "will wake backupActivity:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0, v12}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v15, v12

    :cond_3
    if-eqz v16, :cond_4

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use ACTIVITY wake up ,start activity:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcn/jiguang/ap/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object v0, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v8, v0

    const/4 v0, 0x0

    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to start activity caused by:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    const-string/jumbo v0, "wake success, continue wake other target"

    :goto_5
    invoke-static {v4, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget v0, v7, Lcn/jiguang/ap/c;->g:I

    const/4 v8, 0x4

    and-int/2addr v0, v8

    if-nez v0, :cond_7

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wake end, no service or provider wake, wakeType: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcn/jiguang/ap/c;->g:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v7, Lcn/jiguang/ap/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v0, v12, :cond_9

    iget v0, v7, Lcn/jiguang/ap/c;->c:I

    if-ge v0, v12, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x2

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v0, 0x3

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    iget-object v12, v7, Lcn/jiguang/ap/c;->d:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    or-int/lit8 v0, v0, 0x4

    :cond_b
    move v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "use OLD wake up ,wake type is :"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x2

    if-nez v0, :cond_c

    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_11

    :cond_c
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v7, Lcn/jiguang/ap/c;->a:Ljava/lang/String;

    iget-object v8, v7, Lcn/jiguang/ap/c;->b:Ljava/lang/String;

    invoke-direct {v14, v15, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v14, 0x20

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v3}, Lcn/jiguang/aq/c;->a(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v11, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v8, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v0, :cond_e

    :try_start_4
    new-instance v0, Lcn/jiguang/ao/a$b;

    invoke-direct {v0, v1}, Lcn/jiguang/ao/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v8, v0, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v15, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/16 v0, 0x66

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bindService throwable:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_9
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_11

    :try_start_5
    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_a
    iget-object v8, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v0, :cond_10

    const/16 v18, 0x1

    goto :goto_b

    :cond_10
    const/16 v18, 0x66

    :goto_b
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startService throwable:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_c
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, v7, Lcn/jiguang/ap/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    iget-object v0, v7, Lcn/jiguang/ap/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    const-string v7, "4"

    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcn/jiguang/aq/c;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    iget-object v0, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContentResolver throwable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcn/jiguang/ap/b;->b:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wakeResult:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcn/jiguang/ap/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_16
    return-object v5

    :cond_17
    :goto_e
    const-string v0, "there are no wakeTarget"

    invoke-static {v4, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcn/jiguang/ao/a$a;

    invoke-direct {v0, p0}, Lcn/jiguang/ao/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcn/jiguang/o/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestConfig failed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JWake"

    invoke-static {v0, p0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/ap/a;)V
    .locals 3

    iget-boolean v0, p1, Lcn/jiguang/ap/a;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcn/jiguang/ap/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p1, Lcn/jiguang/ap/a;->e:Z

    if-nez p1, :cond_2

    invoke-static {p0}, Lcn/jiguang/o/b;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    :cond_2
    invoke-static {p0, v0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcn/jiguang/ao/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/ao/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/o/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[doAction failed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JWake"

    invoke-static {p1, p0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "JWake"

    if-eqz p2, :cond_3

    const/high16 v1, 0x10800000

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cn.jpush.android.service.DActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "cn.jpush.android.service.BActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "JWake_activity"

    :goto_0
    invoke-static {p0, p1}, Lcn/jiguang/o/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string p1, "JWake_dactivity"

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    const-string p0, "Fail to start activity ,activityIntent is null !!"

    invoke-static {v0, p0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to start activity caused by:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v0, p2, p1, p3}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->p:Ljava/util/List;

    const/4 v1, 0x1

    const-string v2, "JWake"

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in black list"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->n:Ljava/lang/String;

    const-string v3, "exclude"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in excloude list"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->n:Ljava/lang/String;

    const-string v3, "include"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in include list"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "JWake"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/jiguang/f/a;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSafeStatus blackPkgName = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSafeStatus error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lcn/jiguang/o/b;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcn/jiguang/aq/b;->b(Landroid/content/Context;)Lcn/jiguang/ap/a;

    move-result-object p0

    iget-boolean p0, p0, Lcn/jiguang/ap/a;->e:Z

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isActionUserEnable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JWake"

    invoke-static {v1, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/o/b;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-boolean v1, v1, Lcn/jiguang/ap/a;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActionUserEnable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JWake"

    invoke-static {v2, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic c(Landroid/content/Context;)Lcn/jiguang/ap/a;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/ao/a;->d(Landroid/content/Context;)Lcn/jiguang/ap/a;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-wide v0, v0, Lcn/jiguang/ap/a;->l:J

    iget-object v2, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    const-string v3, "JWakeConfigHelper"

    invoke-static {v2, v3}, Lcn/jiguang/o/b;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[refeshWakeConfig] currentTimeMillis:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",lastBusinessTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",wakeConfigInterval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JWake"

    invoke-static {v7, v6}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    iget-object v0, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ao/a;->d(Landroid/content/Context;)Lcn/jiguang/ap/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ao/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "need not get wake config"

    invoke-static {v7, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Lcn/jiguang/ap/a;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/aq/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/s/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/aq/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/aq/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcn/jiguang/ap/a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestConfigNow] failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JWake"

    invoke-static {v0, p0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/jiguang/ap/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/aq/c;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, v1, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/jiguang/aq/c;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v0, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-object v0, v0, Lcn/jiguang/ap/a;->k:Ljava/util/Map;

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    iget-object v0, v1, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    const-string v6, "JWake_account"

    invoke-static {v0, v6}, Lcn/jiguang/o/b;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, v1, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    const-string v8, "JWake_activity"

    invoke-static {v0, v8}, Lcn/jiguang/o/b;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    iget-object v0, v1, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    const-string v10, "JWake_dactivity"

    invoke-static {v0, v10}, Lcn/jiguang/o/b;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v0, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-wide v14, v0, Lcn/jiguang/ap/a;->q:J

    sub-long v14, v12, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    iget-wide v3, v0, Lcn/jiguang/ap/a;->s:J

    move-object/from16 v18, v2

    cmp-long v19, v14, v3

    if-ltz v19, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-long v14, v12, v10

    move/from16 v19, v3

    iget-wide v2, v0, Lcn/jiguang/ap/a;->r:J

    cmp-long v0, v14, v2

    if-gez v0, :cond_2

    iget-object v0, v1, Lcn/jiguang/ao/a;->d:Ljava/lang/String;

    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTimeMillis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",lastAccountTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",lastActivityTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",lastDActivityTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "JWake"

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget v7, v7, Lcn/jiguang/ap/a;->f:I

    if-ge v0, v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7}, Lcn/jiguang/ao/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/ap/d;

    iget v8, v0, Lcn/jiguang/ap/d;->a:I

    if-nez v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not need any method to wake, type is 0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    move-object/from16 v9, v16

    if-eqz v16, :cond_5

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/jiguang/ap/c;

    goto :goto_4

    :cond_5
    iget-boolean v10, v0, Lcn/jiguang/ap/d;->d:Z

    if-eqz v10, :cond_6

    iget-object v10, v1, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v10, v7}, Lcn/jiguang/aq/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/ap/c;

    move-result-object v10

    goto :goto_4

    :cond_6
    move-object v10, v8

    :goto_4
    if-nez v10, :cond_7

    if-eqz v17, :cond_7

    move-object/from16 v11, v17

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/jiguang/ap/c;

    goto :goto_5

    :cond_7
    move-object/from16 v11, v17

    :cond_8
    :goto_5
    if-nez v10, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found targetInfo"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v16, v9

    move-object/from16 v17, v11

    goto/16 :goto_3

    :cond_9
    iget v12, v0, Lcn/jiguang/ap/d;->a:I

    iput v12, v10, Lcn/jiguang/ap/c;->g:I

    const-string v12, "not support acc"

    invoke-static {v3, v12}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v12, v10, Lcn/jiguang/ap/c;->g:I

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_10

    iget-object v12, v0, Lcn/jiguang/ap/d;->f:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v2, :cond_a

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v0, "cn.jpush.android.service.DActivity"

    invoke-virtual {v8, v7, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v12, "cn.jpush.android.service.BActivity"

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v1, v8, v7, v4}, Lcn/jiguang/ao/a;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v12

    invoke-direct {v1, v0, v7, v4}, Lcn/jiguang/ao/a;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v13

    or-int/2addr v12, v13

    move v13, v12

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_8

    :cond_a
    const-string v0, "not DActivity time"

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_7

    :cond_b
    if-eqz v19, :cond_c

    iget-object v0, v0, Lcn/jiguang/ap/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v12, 0x1

    :try_start_2
    invoke-direct {v1, v0, v7, v12}, Lcn/jiguang/ao/a;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v20, v8

    move-object v8, v0

    move-object/from16 v0, v20

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    const/4 v12, 0x1

    const-string v0, "not custom Activity time"

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object v0, v8

    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_f

    if-nez v8, :cond_d

    if-eqz v0, :cond_f

    :cond_d
    if-eqz v8, :cond_e

    iput-object v8, v10, Lcn/jiguang/ap/c;->e:Landroid/content/Intent;

    iput-object v0, v10, Lcn/jiguang/ap/c;->f:Landroid/content/Intent;

    goto :goto_b

    :cond_e
    iput-object v0, v10, Lcn/jiguang/ap/c;->e:Landroid/content/Intent;

    goto :goto_b

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "do not use Activity wake , activityEnable = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",  intent="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_b

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_9
    const/4 v12, 0x1

    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse package:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " activity intent error:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move-object/from16 v7, v18

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v7

    goto/16 :goto_6

    :cond_11
    move-object/from16 v9, v16

    move-object/from16 v7, v18

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget v2, v2, Lcn/jiguang/ap/a;->f:I

    if-ge v0, v2, :cond_17

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget v0, v0, Lcn/jiguang/ap/a;->v:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeTargetList less maxWakeCount, but not add local wake list for app not support service wakeup type, app_unsupported_wake_type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget v2, v2, Lcn/jiguang/ap/a;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_12
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    invoke-static {v0, v4}, Lcn/jiguang/aq/c;->a(Lcn/jiguang/ap/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget v6, v6, Lcn/jiguang/ap/a;->f:I

    if-ge v4, v6, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jiguang/ap/c;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    if-eqz v5, :cond_16

    iget-object v6, v4, Lcn/jiguang/ap/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v4, Lcn/jiguang/ap/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jiguang/ap/d;

    if-eqz v6, :cond_16

    iget v6, v6, Lcn/jiguang/ap/d;->a:I

    if-nez v6, :cond_16

    const-string v4, "not support any wake type, continue add other to target from local"

    invoke-static {v3, v4}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    iput v2, v4, Lcn/jiguang/ap/c;->g:I

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    return-object v7
.end method


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "JWake"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wake with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/ao/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/o/d;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "can\'t wake because not registered yet"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/aq/b;->b(Landroid/content/Context;)Lcn/jiguang/ap/a;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    invoke-direct {p0}, Lcn/jiguang/ao/a;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    invoke-static {v1, v2}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;Lcn/jiguang/ap/a;)V

    invoke-direct {p0}, Lcn/jiguang/ao/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "wake is disabled by user"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-boolean v2, v1, Lcn/jiguang/ap/a;->a:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Lcn/jiguang/ap/a;->c:Z

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, v1, Lcn/jiguang/ap/a;->w:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/jiguang/ao/a;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "wake is disabled by unsafe package"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget v2, v1, Lcn/jiguang/ap/a;->v:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    const-string v1, "all wakeup type is unsupported of app, not wakeup any package"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-boolean v1, v1, Lcn/jiguang/ap/a;->i:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/jiguang/ao/a;->d:Ljava/lang/String;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcn/jiguang/ao/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    invoke-static {v2, v3, v1}, Lcn/jiguang/aq/c;->a(Landroid/content/Context;Lcn/jiguang/ap/a;Ljava/util/List;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-boolean v1, v1, Lcn/jiguang/ap/a;->h:Z

    if-nez v1, :cond_6

    const-string v1, "time disabled"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/o/b;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    iget-wide v3, v3, Lcn/jiguang/ap/a;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[wakeUp]currentTimeMillis:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",lastBusinessTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",wakeInterval:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-ltz v1, :cond_7

    invoke-direct {p0}, Lcn/jiguang/ao/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ao/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ap/a;

    invoke-static {v2, v3, v1}, Lcn/jiguang/aq/c;->a(Landroid/content/Context;Lcn/jiguang/ap/a;Ljava/util/List;)V

    goto :goto_1

    :cond_7
    const-string v1, "need not wake up"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    :goto_0
    const-string/jumbo v1, "wake is disabled by server"

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wake failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
