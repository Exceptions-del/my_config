from pathlib import Path
import os


def w2u(path):
    """将目标文件夹下的文件都转为unix格式"""
    ps = Path(path).iterdir()
    # 遍历所有文件
    for i in ps:
        if Path(i).is_dir():
            print(i, '是文件夹')
            w2u(f'./{i}')
        else:
            # print(Path(path).joinpath(i), '是文件')
            os.system(f'dos2unix {Path(i).resolve()}')

def main(path):
    os.system(f"cd ~/")
    if (Path(path).exists()):
        print("文件夹存在, 开始复制")
    else:
        print("文件夹不存在,现在开始克隆")
        os.system("git clone https://hub.fastgit.xyz/Exceptions-del/my_config.git")

    
    print("文件转换中")
    w2u(path)
    print("文件转换完毕")
    
    os.chdir(path)
    os.system(f"cp ./.Rprofile ~/")
    for i in Path('vim_config/').iterdir():
        os.system(f"cp {Path(i).resolve()} ~/")
        
    print("复制完毕")

if __name__ == '__main__':
    path = './my_config'
    main(path)
